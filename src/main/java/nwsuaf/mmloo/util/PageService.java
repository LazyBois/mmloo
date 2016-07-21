package nwsuaf.mmloo.util;

import java.util.List;
import java.util.Map;

import nwsuaf.mmloo.dao.IPageDao;
import nwsuaf.mmloo.util.PageParam;
/**
 * @author LazyMan 此类用于分页显示
 *
 */
public class PageService {
	
	public static <T> int getRowCount(IPageDao<T> dao,Map<String, Object> params) {
		return dao.getRowCount(params);
	}
	
	public static <T> PageParam<T> getIpListByPage(PageParam<T> pageParam,IPageDao<T> dao,Map<String, Object> params) {
		int currPage = pageParam.getCurrPage();
		// limit offset, size
		int offset = (currPage - 1) * pageParam.pageSize ;
		int size = pageParam.pageSize;
		if(offset < 0)
		{
			offset = 0;
		}
		params.put("offset", offset);
		params.put("size", size);
		
		List<T> list = dao.selectByParams(params);
		
		pageParam.setData(list);
		
		return pageParam;
	}
	
	public static <T> int getRowCountKey(IPageDao<T> dao,Map<String, Object> params) {
		return dao.getRowCountKey(params);
	}
	
	public static <T> PageParam<T> getIpListByPageKey(PageParam<T> pageParam,IPageDao<T> dao,Map<String, Object> params) {
		int currPage = pageParam.getCurrPage();
		// limit offset, size
		int offset = (currPage - 1) * pageParam.pageSize ;
		int size = pageParam.pageSize;
		if(offset < 0)
		{
			offset = 0;
		}
		params.put("offset", offset);
		params.put("size", size);
		
		List<T> list = dao.selectByKey(params);
		
		pageParam.setData(list);
		
		return pageParam;
	}
}
