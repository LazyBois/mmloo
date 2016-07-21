package nwsuaf.mmloo.dao;

import java.util.List;
import java.util.Map;

/**
 * @author LazyMan 凡是要实现分页的dao接口 都必须继承此接口
 */
public interface  IPageDao<T> {
	
	/**
	 * @return 获取总记录数
	 */
	int getRowCount(Map<String, Object> params);
	
	/**
	 * @param params
	 * @return 获取当前页要显示的List数据
	 */
	List<T> selectByParams(Map<String, Object> params);

	List<T> selectByKey(Map<String, Object> params);

	int getRowCountKey(Map<String, Object> params);
	
}
