package nwsuaf.mmloo.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nwsuaf.mmloo.dao.IOrderDao;
import nwsuaf.mmloo.entity.Order;
import nwsuaf.mmloo.entity.User;
import nwsuaf.mmloo.util.PageParam;
import nwsuaf.mmloo.util.PageService;

/**
 * @author LazyMan
 *提供订单的增删改查
 */
@Service
@Transactional
public class OrderSelectService {
	
	@Resource
	private IOrderDao orderDao;
	
	
	/**
	 * @param uname
	 * @return 根据用户名 和 状态 查询订单详情 并分页显示
	 */
	public PageParam<Order> selectByState(User user,String state,int currPage){
		
		PageParam<Order> pageParam = new PageParam<Order>();
		pageParam.setPageSize(20);
		
		Map<String, Object> params = new HashMap<String, Object>();
		if(null != user)
		{
			
			params.put("uname", "'"+user.getUname()+"'");
		}		
		if(state != null && !state.equals("")){
			state = "'" + state + "'";
		}
		params.put("status", state);
		
		int rowCount = PageService.getRowCount(orderDao,params);

		pageParam.setRowCount(rowCount);
		if (pageParam.getTotalPage() < currPage) {
			currPage = pageParam.getTotalPage();
		}
		pageParam.setCurrPage(currPage);
		
		pageParam = PageService.getIpListByPage(pageParam,orderDao,params);
		return pageParam;
	}


	public void selectById(Long orderid) {
		//orderDao.selectById(orderid);
	}
	
}
