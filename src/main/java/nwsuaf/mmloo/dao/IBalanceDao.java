package nwsuaf.mmloo.dao;

import java.util.List;
import java.util.Map;

import nwsuaf.mmloo.entity.Balance;

/**
 * @author LazyMan 余额
 *
 */
public interface IBalanceDao extends IPageDao<Balance>{
	
	/**
	 * @param uname
	 * @return 获取uname的所有数量
	 */
	int getRowCount(String uname);
	
	
	/* (non-Javadoc)
	 * @see nwsuaf.mmloo.dao.IPageDao#selectByParams(java.util.Map)
	 */
	List<Balance> selectByParams(Map<String, Object> params);
	
	int insert(Balance record);
	
	int deleteByPrimaryKey(Long bid);

	int updateByPrimaryKey(Balance record);

    Balance selectByPrimaryKey(Long bid);
}