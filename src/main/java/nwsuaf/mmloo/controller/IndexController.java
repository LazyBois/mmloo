package nwsuaf.mmloo.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import nwsuaf.mmloo.entity.Comment;
import nwsuaf.mmloo.entity.Gshelves;
import nwsuaf.mmloo.entity.Order;
import nwsuaf.mmloo.entity.User;
import nwsuaf.mmloo.service.GshelvesService;
import nwsuaf.mmloo.service.MistoreService;
import nwsuaf.mmloo.service.UserSelectService;
import nwsuaf.mmloo.service.UserService;
import nwsuaf.mmloo.util.MailUtil;
import nwsuaf.mmloo.util.PageParam;
import nwsuaf.mmloo.util.RandomPass;
import nwsuaf.mmloo.util.RandomValidateCode;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * @author LazyMan 处理静态页面的请求
 */
@Controller
@SessionAttributes({ "user", "code", "mcode" })
public class IndexController {

	@Resource
	MistoreService mSer;

	@Resource
	UserSelectService usSer;

	@Resource
	GshelvesService gsSer;

	@ModelAttribute("user")
	public User creatUser() {
		return new User();
	}

	// 首页
	@RequestMapping(value = "index")
	public String index() {
		return "index";
	}

	// 登录页
	@RequestMapping(value = "loadLogin")
	public String login() {
		return "login";
	}

	// 注册页
	@RequestMapping(value = "registe")
	public String registe() {
		return "registe";
	}

	// 验证码逻辑
	@Resource
	RandomValidateCode code;

	@RequestMapping("/vcode")
	public void vcode(HttpServletResponse response, ModelMap model) {
		model.addAttribute("code", code.getRandcode(response));
	}

	@RequestMapping("/checkVcode")
	@ResponseBody
	public String checkVocde(@ModelAttribute("code") String code, String vcode) {

		if (null == vcode || !vcode.toLowerCase().equals(code.toLowerCase())) {
			return "false";
		} else {
			return "true";
		}
	}

	// 登录
	@RequestMapping(value = "doLogin", method = RequestMethod.POST)
	@ResponseBody
	public String doLogin(User user, String ip, ModelMap model) {
		user = usSer.login(user, ip);
		if (user == null) {
			return "no";
		} else {
			model.addAttribute("user", user);
			// 管理员类型
			if ("admin".equals(user.getKind())) {
				return "showAllMistroe.do";
			}
			return "index.do";
		}

	}


	// 验证邮箱 先查重 后验证码

	// 邮箱查重
	@RequestMapping(value = "checkMail")
	@ResponseBody
	public String checkMail(String mail) {
		if (usSer.isMailExist(mail)) {
			return "false";
		} else {
			return "true";
		}
	}

	// 注册
	@Resource
	UserService userService;

	// 发送邮件
	@RequestMapping(value = "mailCode")
	public String name(User user) {
		String mcode = RandomPass.randomKey();
		String mail = user.getEmail().split("#")[0];
		user.setEmail(mail + "#" + mcode);
		try {
			String message = "请点击该链接：http://localhost/mmloo/mailCheck.do?mail="
					+ mail + "&mcode=" + mcode + "&page=index";
			MailUtil.send(mail, message);
			return "redirect:https://mail.qq.com/cgi-bin/loginpage";
		} catch (Exception e) {
			return "redirect:mailCode.do";
		}
	}

	// 忘记密码
	// 请求页面
	@RequestMapping(value = "forget")
	public String forget() {
		return "forget";
	}

	// 发送邮件
	@RequestMapping(value = "doForget")
	public String doForget(String uname) {
		User user = usSer.selectUserByUname(uname);

		if (null == user || null == user.getEmail()
				|| "".equals(user.getEmail())) {
			return "forget";
		}

		String mcode = RandomPass.randomKey();
		String email = user.getEmail().split("#")[0];
		String mail = email + "#" + mcode;

		user.setEmail(mail);

		userService.upMailByUname(user);
		try {
			String message = "请点击该链接：http://localhost/mmloo/mailCheck.do?mail="
					+ email + "&mcode=" + mcode + "&page=index";
			MailUtil.send(email, message);
			return "redirect:https://mail.qq.com/cgi-bin/loginpage";
		} catch (Exception e) {
			return "redirect:doForget.do";
		}
	}

	// 评论呈现
	// 根据店号+组号 呈现该组商品的评论信息
	@RequestMapping(value = "showComment")
	public List<Comment> showComment(String mkidStr) {
		if (null == mkidStr || "".equals(mkidStr)) {
			return null;
		}
		List<Comment> list = mSer.selectCommentByKid(mkidStr);
		return list;
	}

	// 评论插入
	@RequestMapping(value = "insertComment")
	public String insertComment(Order order, Comment record) {
		mSer.insertComment(order, record);
		return "";
	}

//	@RequestMapping(value = "product")
//	public String product(String productid, ModelMap model) {
//
//		model.addAttribute("product", null);
//		return "product";
//	}



	/**
	 * 订单详情
	 * 
	 * @return
	 */
	@RequestMapping(value = "myOrderList")
	public String myOrderList() {
		return "myOrderList";
	}

	// 加载商品详细页面
	@RequestMapping(value = "loadProduct")
	public String loadProduct(String productid) {
		// mSer.selectGoods(productid)
		return "product";
	}

	@RequestMapping(value = "submitCart")
	public String submitCart() {
		return "submitCart";
	}

	@RequestMapping(value = "mailCheck")
	public String name(String mail, String mcode, String page, Model model) {
		User user = userService.checkMcode(mail, mcode);
		if (null != user && null != page && !"".equals(page)) {
			model.addAttribute("user", user);
			return page;
		}
		return "redirect:loadLogin.do";
	}

	// 个人信息页
	@RequestMapping(value = "personInfo")
	public String personInfo() {
		return "personInfo";
	}

	// ==================================商品搜索==================================

	@RequestMapping(value = "search")
	public String search(String key, Integer pages, ModelMap model) {
		System.out.println(key);
		int currPage = (null == pages ? 1 : pages);
		if (null == key || "".equals(key)) {
			key = null;
		} else {
			model.addAttribute("key", key);
			key = "'" + key + "'";
		}
		PageParam<Gshelves> pageParam = gsSer.selectByKey(key, currPage);

		// 修改图片路径
		for (Object o : pageParam.getData()) {
			Gshelves g = (Gshelves) o;
			String imagePath = g.getSelfimage();
			if (null != imagePath && !"".equals(imagePath)) {
				imagePath = imagePath.split("#")[0];
			}
			g.setSelfimage(imagePath);
		}

		model.addAttribute("pageParam", pageParam);
		return "search";
	}
	// ==================================商品搜索结束==================================
}
