package nwsuaf.mmloo.service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nwsuaf.mmloo.dao.IPointDao;
import nwsuaf.mmloo.entity.Point;
import nwsuaf.mmloo.util.PageParam;
import nwsuaf.mmloo.util.PageService;

/**
 * @author LazyMan
 *提供积分的增删改查
 */
@Service
@Transactional
public class PointService {
	
	@Resource
	private IPointDao dao;
	
	/**
	 * @param record 积分记录
	 * @return 插入成功为true
	 */
	public boolean insert(Point record)
	{
		record.setPtime(new Date());
		return dao.insert(record) == 0? false:true;
	}
	
	/**
	 * @param orderid 订单号
	 * @return 删除成功为true
	 */
	public boolean deleteById(long orderid)
	{
		return dao.deleteByPrimaryKey(orderid) == 0? false:true;
	}
	
	/**
	 * @param record 订单记录
	 * @return 更新成功为true
	 */
	public boolean update(Point record)
	{
		return dao.updateByPrimaryKey(record) == 0? false:true;
	}
	
	
	/**
	 * @param uname
	 * @return 根据用户名查询订单详情 并分页显示
	 */
	public PageParam<Point> selectByUname(String uname,int currPage){
		// 获取总记录数
		int rowCount = PageService.getRowCount(dao,null);
		PageParam<Point> pageParam = new PageParam<Point>();
		pageParam.setRowCount(rowCount);
		if (pageParam.getTotalPage() < currPage) {
			currPage = pageParam.getTotalPage();
		}
		pageParam.setCurrPage(currPage);
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("uname", uname);
		pageParam = PageService.getIpListByPage(pageParam,dao,params);
		return pageParam;
	}
	
}
