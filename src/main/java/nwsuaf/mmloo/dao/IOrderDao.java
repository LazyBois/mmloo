package nwsuaf.mmloo.dao;

import java.util.List;
import java.util.Map;

import nwsuaf.mmloo.entity.Order;
import nwsuaf.mmloo.entity.Orderg;

public interface IOrderDao extends IPageDao<Order>{
	
	/**
	 * @param uname
	 * @return 获取uname的所有订单数量
	 */
	int getRowCount(String uname);
	
	
	/* (non-Javadoc)
	 * @see nwsuaf.mmloo.dao.IPageDao#selectByParams(java.util.Map)
	 */
	List<Order> selectByParams(Map<String, Object> params);
	
	Long insert(Order record);
	
	int deleteByPrimaryKey(Integer orderid);
		
	int updateByPrimaryKey(Order record);


	int insertOrderg(Orderg g);


	long selectID();
	
}