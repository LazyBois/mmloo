package nwsuaf.mmloo.dao;

import java.util.List;
import java.util.Map;

import nwsuaf.mmloo.entity.Mistore;

/**
 * @author LazyMan 米店
 *
 */
public interface IMistoreDao extends IPageDao<Mistore>{
	
	int insert(Mistore record);
	
	int deleteByPrimaryKey(String mname);
	
	int updateByPrimaryKey(Mistore record);
	
	
    Mistore selectByMname(String mname);
    
    Mistore selectByPro(Mistore mistore);
	
	/**
	 * @return 获取所有数量
	 */
	int getRowCount(Map<String, Object> params);
	
	
	/* (non-Javadoc)
	 * @see nwsuaf.mmloo.dao.IPageDao#selectByParams(java.util.Map)
	 */
	List<Mistore> selectByParams(Map<String, Object> params);

	Mistore selectByMid(int mid);

	Mistore selectByUname(String uname);
}