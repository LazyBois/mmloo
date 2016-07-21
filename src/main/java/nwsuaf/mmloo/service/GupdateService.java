package nwsuaf.mmloo.service;

import javax.annotation.Resource;

import nwsuaf.mmloo.dao.IGupdateDao;
import nwsuaf.mmloo.entity.Gupdate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class GupdateService {
	@Resource
	private IGupdateDao gupdateDao;

	public boolean add(Gupdate record) {
		return gupdateDao.insert(record) == 0 ? false : true;
	}

	public boolean addSelective(Gupdate record) {
		return gupdateDao.insertSelective(record) == 0 ? false : true;
	}
}
