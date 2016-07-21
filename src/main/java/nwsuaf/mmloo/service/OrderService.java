package nwsuaf.mmloo.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nwsuaf.mmloo.dao.IOrderDao;
import nwsuaf.mmloo.entity.Mistore;
import nwsuaf.mmloo.entity.Order;
import nwsuaf.mmloo.entity.Orderg;
import nwsuaf.mmloo.entity.User;
import nwsuaf.mmloo.util.PageParam;
import nwsuaf.mmloo.util.PageService;

/**
 * @author LazyMan 提供订单的增删改查
 */
@Service
@Transactional
public class OrderService {

	@Resource
	private IOrderDao orderDao;

	@Resource
	private GshelvesService gsSer;

	@Resource
	private UserService uSer;
	
	@Resource
	private MistoreService mSer;

//	/**
//	 * @param record
//	 *            订单记录
//	 * @return 插入成功为true
//	 */
//	public boolean insert(Order record) {
//		return orderDao.insert(record) == 0 ? false : true;
//	}

	/**
	 * @param record
	 * @param ordergs
	 * @return 下单
	 */
	public String insert(User user, List<Order> orders) {
		for (Order o : orders) {
			if (o.getRealtotalprice() < 0) {
				return "erro1";
			}
			o.setStatus("已付款");
			// 订单插入
			orderDao.insert(o);
			
			long orderid = orderDao.selectID();
			if (orderid <= 0) {
				return "erro2";// 订单插入失败
			}
			// 货物数量核定
			for (Orderg g : o.getOrdergs()) {
				if (g.getGnumber() < 0) {
					return "erro3";
				}
				g.setOrderid(orderid);
				if (gsSer.updateNumByGid(g.getGid(), -g.getGnumber())) {
					return "erro:数量不足";
				}
				orderDao.insertOrderg(g);
			}
			User u = new User();
			u.setUname("admin");
			// 付款
			if (!uSer.updateBalanceByUname(user, -o.getRealtotalprice(), "付款：订单号" + orderid)
					|| !uSer.updateBalanceByUname(u, o.getRealtotalprice(), "付款：订单号" + orderid)) {
				return "erro:付款失败";
			}
		}
		return "";
	}

	// 米店确认收单/拒收单
	public boolean updateOrderMistore(Order order) {
		if(null == order)
		{
			return false;
		}
		if("拒收".equals(order.getStatus()))
		{
			//撤销收钱操作
		}		
		return orderDao.updateByPrimaryKey(order) == 1 ? true : false;
	}
	
	//用户确认收货
	public boolean updateOrderUser(Order order)
	{
		if(null == order)
		{
			return false;
		}
		
		order.setStatus("待评价");
		order.setEtime(new Date());
		if(1 != orderDao.updateByPrimaryKey(order)){
			return false;
		}
		//开店者
		Mistore mistore = mSer.selectByMname(order.getMname());
		User mUser = uSer.selectByUname(mistore.getUname());
		
		float mPoint = mistore.getPoint();
		//商城回扣k = order.实付金额*(100-mistore.积分)*0.0001
		float k = (float) (order.getRealtotalprice() * (100 - mPoint)*0.0001);
		//商家实际收取r= order.实付金额 - k;
		float r = order.getRealtotalprice() - k;
		
		User admin = uSer.selectByUname("admin");
		
		if(!uSer.updateBalanceByUname(mUser, r, "收款") || !uSer.updateBalanceByUname(admin, r, "收款")){
			return false;
		}
		return true;
	}

	/**
	 * @param orderid
	 *            订单号
	 * @return 删除成功为true
	 */
	public boolean deleteById(int orderid) {
		return orderDao.deleteByPrimaryKey(orderid) == 0 ? false : true;
	}

	/**
	 * @param record
	 *            订单记录
	 * @return 更新成功为true
	 */
	public boolean update(Order record) {
		return orderDao.updateByPrimaryKey(record) == 0 ? false : true;
	}

	/**
	 * @param user
	 *            用户
	 * @param state
	 *            订单状态 默认为空
	 * @param currPage
	 *            页码 默认为1
	 * @return 根据用户名 和 状态 查询订单列表 并分页显示 当点击订单详情时 根据订单号查询其物流详情
	 */
	public PageParam<Order> selectByState(User user, String state, int currPage) {

		PageParam<Order> pageParam = new PageParam<Order>();
		pageParam.setPageSize(20);
		Map<String, Object> params = new HashMap<String, Object>();
		if (null != user) {
			params.put("uname", "'" + user.getUname() + "'");
		}
		if(state == null || "".equals(state)){
			state = null;			
		}else{
			state = "'" + state + "'";
		}
		params.put("state", state);

		int rowCount = PageService.getRowCount(orderDao, params);

		pageParam.setRowCount(rowCount);
		if (pageParam.getTotalPage() < currPage) {
			currPage = pageParam.getTotalPage();
		}
		pageParam.setCurrPage(currPage);

		pageParam = PageService.getIpListByPage(pageParam, orderDao, params);
		return pageParam;
	}

//	public void selectById(Long orderid) {
//		orderDao.selectById(orderid);
//	}
}
