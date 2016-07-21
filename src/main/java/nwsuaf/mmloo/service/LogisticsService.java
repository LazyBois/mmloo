package nwsuaf.mmloo.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nwsuaf.mmloo.dao.ILogisticsDao;
import nwsuaf.mmloo.entity.Logistics;

/**
 * @author LazyMan
 *提供物流的增删改查
 */
@Service
@Transactional
public class LogisticsService {
	
	@Resource
	private ILogisticsDao dao;
	
	/**
	 * @param record 物流记录
	 * @return 插入成功为true
	 */
	public boolean insert(Logistics record)
	{
		record.setLogtime(new Date());
		return dao.insert(record) == 0? false:true;
	}
	
	/**
	 * @param orderid 物流记录号
	 * @return 删除成功为true
	 */
//	public boolean deleteById(long kid)
//	{
//		return dao.deleteById(kid) == 0? false:true;
//	}
	
	/**
	 * @param record 物流记录
	 * @return 更新成功为true
	 */
	public boolean update(Logistics record)
	{
		return dao.update(record) == 0? false:true;
	}
	
	
	/**
	 * @param logid
	 * @return 根据logid查询物流
	 */
	@Transactional(readOnly=true)
	public List<Logistics> selectByLogid(Long logid)
	{
		return dao.selectListByLogid(logid);
	}
	
	
}
