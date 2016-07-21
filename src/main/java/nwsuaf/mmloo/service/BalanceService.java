package nwsuaf.mmloo.service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nwsuaf.mmloo.dao.IBalanceDao;
import nwsuaf.mmloo.entity.Balance;
import nwsuaf.mmloo.util.PageParam;
import nwsuaf.mmloo.util.PageService;

/**
 * @author LazyMan
 *提供余额的增删改查
 */
@Service
@Transactional
public class BalanceService {
	
	@Resource
	private IBalanceDao dao;
	
	/**
	 * @param record 余额记录
	 * @return 插入成功为true
	 */
	public boolean insert(Balance record)
	{
		record.setDate(new Date());
		return dao.insert(record) == 0? false:true;
	}
	
	/**
	 * @param orderid 余额记录号
	 * @return 删除成功为true
	 */
	public boolean deleteById(long bid)
	{
		return dao.deleteByPrimaryKey(bid) == 0? false:true;
	}
	
	/**
	 * @param record 余额记录
	 * @return 更新成功为true
	 */
	public boolean update(Balance record)
	{
		return dao.updateByPrimaryKey(record) == 0? false:true;
	}
	
	
	/**
	 * @param uname
	 * @return 根据用户名查询余额详情 并分页显示
	 */
	public PageParam<Balance> selectByUname(String uname,int currPage){
		// 获取总记录数
		int rowCount = PageService.getRowCount(dao,null);
		PageParam<Balance> pageParam = new PageParam<Balance>();
		pageParam.setPageSize(100);
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
