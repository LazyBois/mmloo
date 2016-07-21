package nwsuaf.mmloo.controller;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.alibaba.fastjson.JSON;

import nwsuaf.mmloo.entity.Address;
import nwsuaf.mmloo.entity.Balance;
import nwsuaf.mmloo.entity.Comment;
import nwsuaf.mmloo.entity.Gshelves;
import nwsuaf.mmloo.entity.Order;
import nwsuaf.mmloo.entity.Orderg;
import nwsuaf.mmloo.entity.Scan;
import nwsuaf.mmloo.entity.Shopcart;
import nwsuaf.mmloo.entity.User;
import nwsuaf.mmloo.power.AuthorityType;
import nwsuaf.mmloo.power.FireAuthority;
import nwsuaf.mmloo.service.AddressService;
import nwsuaf.mmloo.service.BalanceService;
import nwsuaf.mmloo.service.GshelvesService;
import nwsuaf.mmloo.service.LogisticsService;
import nwsuaf.mmloo.service.MistoreService;
import nwsuaf.mmloo.service.OrderService;
import nwsuaf.mmloo.service.PointService;
import nwsuaf.mmloo.service.ScanService;
import nwsuaf.mmloo.service.ShopcartService;
import nwsuaf.mmloo.service.UserSelectService;
import nwsuaf.mmloo.service.UserService;
import nwsuaf.mmloo.util.MD5;
import nwsuaf.mmloo.util.PageParam;
import nwsuaf.mmloo.util.RandomPass;

/**
 * @author LazyMan 此类用于用户管理 包括：用户信息 浏览记录 购物车 积分 余额
 */
@Controller
@SessionAttributes({"user","m"})
@RequestMapping("user")
public class UserController {

	@Resource
	UserService uSer;// 用户

	@Resource
	MistoreService mSer;// 用户

	@Resource
	UserSelectService usSer;// 用户查询

	@Resource
	OrderService oSer;// 订单

	@Resource
	LogisticsService lSer;

	@Resource
	AddressService aSer;

	@Resource
	BalanceService bSer;

	@Resource
	ScanService sSer;

	@Resource
	ShopcartService scSer;

	@Resource
	PointService pSer;
	
	@Resource
	GshelvesService gsSer;
	

	@ModelAttribute("user")
	public User creatUser() {
		return new User();
	}
	
	
	@ModelAttribute("m")
	public Map<String, Order> creatOrderMap() {
		return new  HashMap<String, Order>();
	}

	// 用户民合法性检查
	@RequestMapping(value = "checkUname")
	@ResponseBody
	public String checkUname(String uname) {
		if (null == uname || "".equals(uname) || usSer.isUnameExist(uname)) {
			return "false";
		} else {
			return "true";
		}
	}

	// 处理注册
	@RequestMapping(value = "doRegiste", method = RequestMethod.POST)
	@ResponseBody
	public String doRegiste(User user, ModelMap model, SessionStatus status) {
		String mcode = RandomPass.randomKey();
		user.setEmail(user.getEmail() + "#" + mcode);
		if (!uSer.regist(user)) {
			return "error";
		}
		model.addAttribute("mcode", mcode);
		model.addAttribute("user", user);
		return "index";
	}

	// 用户侧边栏属性

	/**
	 * 订单逻辑
	 */
	// 订单列表
	@ResponseBody
	@FireAuthority(AuthorityType.LOGIN)
	@RequestMapping(value = "showOrder")
	public byte[] showOrder(@ModelAttribute("user") User user, String state,
			String pages) {
		int currPage = 1;
		try {
			currPage = Integer.parseInt(pages);
		} catch (Exception e) {

		}
		if (user.getUname() == null || user.getUname().equals(""))
			return "error".getBytes(Charset.forName("UTF-8"));
		System.out.println(state);

		PageParam<Order> pageParam = oSer.selectByState(user, state, currPage);
		String json = JSON.toJSONString(pageParam);
		return json.getBytes(Charset.forName("UTF-8"));
	}

	// 订单详情 根据order提供的logid 查询物流详情
	@RequestMapping(value = "showOrderg")
	@FireAuthority(AuthorityType.LOGIN)
	public boolean showOrderg(@ModelAttribute("user") User user,
			@ModelAttribute("order") Order order) {
		order.setLogs(lSer.selectByLogid(order.getLogid()));
		return true;
	}

	// 确认收货
	@FireAuthority(AuthorityType.LOGIN)
	@RequestMapping(value = "receiveOrder")
	public boolean receiveOrder(Order order) {
		return oSer.updateOrderUser(order);
	}

	// 下单
	@FireAuthority(AuthorityType.LOGIN)
	@ResponseBody
	@RequestMapping(value = "userInsertOrder")
	public String userInsertOrder(@ModelAttribute("user") User user,@ModelAttribute("m")Map<String,Order> m,
			String reinformation, String payMethod,  String billkind, String billtitle, String billcontent) {
		List<Order> orders = new ArrayList<Order>();
		for(Order o : m.values())
		{
			o.setReinformation(reinformation);
			o.setBillkind(billkind);
			o.setBilltitle(billtitle);
			o.setBillcontent(billcontent);
			o.setPaymethod(payMethod);
			
			o.setUname(user.getUname());
			o.setStatus("已付款");
			o.setOrdertime(new Date());
			float realPay = 0;
			for(Orderg og:o.getOrdergs())
			{
				realPay += og.getGprice()*og.getGnumber();
			}
			o.setRealtotalprice(realPay);
			orders.add(o);	
		}
		System.out.println(oSer.insert(user, orders));
		return "index";
	}

	// 插入评论
	@FireAuthority(AuthorityType.LOGIN)
	@RequestMapping(value = "insertComment")
	public boolean insertComment(Order order, Comment comment) {
		return mSer.insertComment(order, comment);
	}

	// 修改个人信息
	@FireAuthority(AuthorityType.LOGIN)
	@ResponseBody
	@RequestMapping(value = "upMyInfo")
	public String upMyInfo(@ModelAttribute("user") User user, 
			String nicknam, String se , String emai, String phon, String birthda) {
		user.setNickname(nicknam);
		user.setSex(se);
		user.setEmail(emai);
		user.setPhone(phon);
		if(birthda != null && !"".equals(birthda))
		{
			String arr[] = birthda.split("-");
			Date d = new Date();
			d.setYear(Integer.parseInt(arr[0]));
			d.setMonth(Integer.parseInt(arr[1]));
			d.setDate(Integer.parseInt(arr[2]));
			user.setBirthday(d);
		}
		
		return uSer.upInfo(user) + "";
	}

	// 更新密码
	
	@RequestMapping(value = "upPasswd")
	@FireAuthority(AuthorityType.LOGIN)
	public @ResponseBody String upPasswd(@ModelAttribute("user") User user, String newPassword) {		
		if( null == newPassword ||"".equals(newPassword)|| !uSer.upPasswd(user, newPassword))
		{
			return "false";
		}
		return  "true";

	}

	// 呈现收货地址
	@FireAuthority(AuthorityType.LOGIN)
	@RequestMapping(value = "showAddress")
	@ResponseBody
	public byte[] showAddress(@ModelAttribute("user") User user) {
		List<Address> addrList = aSer.selectByUname(user.getUname());
		String json = JSON.toJSONString(addrList);
		return json.getBytes(Charset.forName("UTF-8"));
	}

	// 增加收货地址
	@FireAuthority(AuthorityType.LOGIN)
	@RequestMapping(value = "addAddress")
	@ResponseBody
	public String addAddress(@ModelAttribute("user") User user, Address address) {
		address.setUname(user.getUname());
		return (aSer.insert(address) == 0 ? false : true) + "";
	}

	// 删除收货地址
	@FireAuthority(AuthorityType.LOGIN)
	@RequestMapping(value = "deleAddress")
	@ResponseBody
	public String deleAddress(@ModelAttribute("user") User user, Address address) {
		return aSer.delete(address) + "";
	}

	// 修改收货地址
	@FireAuthority(AuthorityType.LOGIN)
	@RequestMapping(value = "upAddress")
	@ResponseBody
	public String upAddress(@ModelAttribute("user") User user, Address address) {
		address.setUname(user.getUname());
		System.out.println(address);
		return aSer.update(address) + "";
	}

	// 余额明细显示
	@RequestMapping(value = "showBalancePoint")
	public String showBalance(@ModelAttribute("user") User user,ModelMap model) {
		model.addAttribute("balance", bSer.selectByUname(user.getUname(), 1).getData());
		model.addAttribute("point", pSer.selectByUname(user.getUname(), 1).getData());
		return "my-account";
	}

	// 余额充值/消费
	@FireAuthority(AuthorityType.LOGIN)
	@RequestMapping(value = "insertBalance")
	public String insertBalance(@ModelAttribute("user") User user, Balance record,
			String method) {
		record.setUname(user.getUname());
		record.setDescribes(method+record.getPut());
		user.setBalance(user.getBalance() + record.getPut());
		uSer.upInfo(user);
		bSer.insert(record);
		return "redirect:showBalancePoint.do";
	}

	// 浏览记录显示
	@RequestMapping(value = "showScan")
	public List<Scan> showScan(@ModelAttribute("user") User user) {
		return sSer.selectByUname(user.getUname());
	}

	// 浏览记录增加
	@RequestMapping(value = "addScan")
	public void addScan(@ModelAttribute("user") User user, Scan record) {
		sSer.insert(record);
	}

	// 浏览记录删除
	@RequestMapping(value = "deleScan")
	public void deleScan(@ModelAttribute("user") User user, String sidStr) {
		if (null != sidStr && "".equals(sidStr)) {
			Long sid = Long.valueOf(sidStr);
			sSer.delete(sid);
		}
	}

	// 购物车删除
	@RequestMapping(value = "deleCart")
	public boolean deleCart(@ModelAttribute("user") User user, Shopcart record) {
		return scSer.delete(record);
	}

	// 购物车修改
	@RequestMapping(value = "upCart")
	public boolean upCart(@ModelAttribute("user") User user, Shopcart record) {
		return scSer.update(record);
	}

	// 购物车插入
	@ResponseBody
	@RequestMapping(value = "insertCart")
	public String insertCart(@ModelAttribute("user") User user, String gid, String snum) {
		Shopcart record = new Shopcart();
		record.setGid(Long.parseLong(gid));
		record.setSnum(Integer.parseInt(snum));
		record.setUname(user.getUname());
		return scSer.insert(record) + "";
	}
	
	//购物车转化order
	@RequestMapping(value = "shopOrder")
	public String shopOrder(@ModelAttribute("user") User user,String productids, ModelMap model) {
		String[] arr = productids.split("#");
		List<Shopcart> shopCart = new ArrayList<Shopcart>();
		Map<String, Order> m = new HashMap<String, Order>();
		
		for(String index:arr)
		{
			if(null != index && !"".equals(index))
			{
				Shopcart shopcart = scSer.selectByUnameGid(user.getUname(),Long.parseLong(index));
				Gshelves g = shopcart.getGoods();
				
				Orderg orderg = new Orderg();
				orderg.setGoods(g);
				orderg.setGid(g.getGid());
				orderg.setGnumber(shopcart.getSnum());
				orderg.setGprice(g.getGprice());
				String mname = g.getMistore().getMname();
				float price = g.getGprice() * shopcart.getSnum();
				if(m.containsKey(mname))
				{
					Order order = m.get(mname);
					order.getOrdergs().add(orderg);					
					order.setRealtotalprice(order.getRealtotalprice() + price);
				}else{
					Order order = new Order();
					order.setMname(mname);
					order.setOrdergs(new ArrayList<Orderg>());
					order.getOrdergs().add(orderg);
					order.setRealtotalprice(price);
					m.put(order.getMname(), order);
				}
				shopCart.add(shopcart);
			}
		}
	
		model.addAttribute("m", m);
		model.addAttribute("shopcart", shopCart);
		return "submitCart";
	}


	// 退出
	@RequestMapping(value = "loginOut")
	public String clearSession(SessionStatus status) {
		// 清除session中的属性
		status.setComplete();
		return "redirect:/index.do";
	}
	
	@RequestMapping(value = "personInfo")
	public String personInfo() {
		// 清除session中的属性
		return "personInfo";
	}
	
	
	/**
	 * 购物车页面
	 * 
	 * @return
	 */
	// 购物车显示
	@RequestMapping(value = "showCart")
	public String showCart(@ModelAttribute("user") User user, ModelMap model) {
		List<Shopcart> list = scSer.selectByUname(user.getUname());
		model.addAttribute("shopCart", list);
		return "myCart";
	}
	
}
