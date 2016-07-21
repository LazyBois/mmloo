package nwsuaf.mmloo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nwsuaf.mmloo.dao.IGshelvesDao;
import nwsuaf.mmloo.entity.Gshelves;
import nwsuaf.mmloo.util.PageParam;
import nwsuaf.mmloo.util.PageService;

/**
 * @author LazyMan
 *提供余额的增删改查
 */
@Service
@Transactional
public class GshelvesService {
	
	@Resource
	private IGshelvesDao dao;
	
	/**
	 * @param record 上架记录
	 * @return 插入成功为true
	 */
	public boolean insert(Gshelves record)
	{
		record.setState("'审核中'");
		return dao.insert(record) == 0? false:true;
	}
	//批量插入
	public int insertList(List<Gshelves> record)
	{
		return dao.insertList(record);
	}
	

	
	public boolean updateNumByGid(Long gid, float f) {
		Gshelves gshelves = dao.selectByPrimaryKey(gid);
		gshelves.setNum(gshelves.getNum() + f);
		dao.updateByPrimaryKey(gshelves);
		return false;
	}
	
	public boolean updateStateByGid(Long gid, String state){
		Gshelves gshelves = dao.selectByPrimaryKey(gid);
		gshelves.setState(state);
		dao.updateByPrimaryKey(gshelves);
		return true;
	}
	
	public int getShelveRowCount(String state) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("state", state);
		return dao.getRowCount(params);
	}
	
	//状态检索
	@Transactional(readOnly = true)
	public PageParam<Gshelves> selectByState(String state, int currPage) {
		// 获取总记录数
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("state", state);

		int rowCount = PageService.getRowCount(dao, params);
		PageParam<Gshelves> pageParam = new PageParam<Gshelves>();
		pageParam.setPageSize(4);
		pageParam.setRowCount(rowCount);
		if (pageParam.getTotalPage() < currPage) {
			currPage = pageParam.getTotalPage();
		}
		pageParam.setCurrPage(currPage);

		pageParam = PageService.getIpListByPage(pageParam, dao, params);
		return pageParam;
	}
	
	@Transactional(readOnly = true)
	public PageParam<Gshelves> selectByKey(String key, int currPage) {
		// 获取总记录数
		Map<String, Object> params = new HashMap<String, Object>();

		params.put("key", key);

		int rowCount = PageService.getRowCountKey(dao, params);
		PageParam<Gshelves> pageParam = new PageParam<Gshelves>();
		pageParam.setPageSize(10);
		pageParam.setRowCount(rowCount);
		if (pageParam.getTotalPage() < currPage) {
			currPage = pageParam.getTotalPage();
		}
		pageParam.setCurrPage(currPage);

		pageParam = PageService.getIpListByPageKey(pageParam, dao, params);
		return pageParam;
	}
	public Gshelves selectByGid(Long gid) {
		return dao.selectByPrimaryKey(gid);
	}
	public List<Gshelves> selectByMid(Integer mid) {		
		return dao.selectByMid(mid);
	}
	
}
