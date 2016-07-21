package nwsuaf.mmloo.dao;

import java.util.List;
import java.util.Map;

import nwsuaf.mmloo.entity.Point;

public interface IPointDao extends IPageDao<Point>{
	
	/**
	 * @param uname
	 * @return 获取uname的所有数量
	 */
	int getRowCount(String uname);
	
	
	/* (non-Javadoc)
	 * @see nwsuaf.mmloo.dao.IPageDao#selectByParams(java.util.Map)
	 */
	List<Point> selectByParams(Map<String, Object> params);
	
	int insert(Point record);
	
	int deleteByPrimaryKey(Long bid);

	int updateByPrimaryKey(Point record);

	Point selectByPrimaryKey(Long bid);
}