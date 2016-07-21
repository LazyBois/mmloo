package nwsuaf.mmloo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nwsuaf.mmloo.dao.IScanDao;
import nwsuaf.mmloo.entity.Scan;

/**
 * @author LazyMan 提供浏览记录增删改
 */
@Service
@Transactional
public class ScanService {
	
	@Resource
	private IScanDao scanDao;
	
	
	/**
	 * @param address
	 * @return 这条记录的主键
	 */
	public int insert(Scan record)
	{
		if(scanDao.selectGid(record) > 0)
		{
			return scanDao.updateTime(record);
		}else{
			return scanDao.insert(record);
		}
	}	
	
	public boolean delete(Long sid)
	{
		return scanDao.deleteById(sid) == 0? false:true;
	}
	
	@Transactional(readOnly = true)
	public List<Scan> selectByUname(String uname){
		return scanDao.selectByUname(uname);
	}
}
