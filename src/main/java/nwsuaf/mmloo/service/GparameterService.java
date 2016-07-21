package nwsuaf.mmloo.service;

import javax.annotation.Resource;

import nwsuaf.mmloo.dao.IGparameterDao;
import nwsuaf.mmloo.entity.Gparameter;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class GparameterService {
	@Resource
	private IGparameterDao gparameterDao;

	public boolean add(Gparameter record) {
		return gparameterDao.insert(record) == 0 ? false : true;
	}

	public boolean addSelective(Gparameter record) {
		return gparameterDao.insertSelective(record) == 0 ? false : true;
	}

	public boolean delete(int deleteid) {
		return gparameterDao.deleteByPrimaryKey(deleteid) == 0 ? false : true;
	}

	public boolean update(Gparameter record) {
		return gparameterDao.updateByPrimaryKey(record) == 0 ? false : true;
	}

	public boolean updateSelective(Gparameter record) {
		return gparameterDao.updateByPrimaryKeySelective(record) == 0 ? false
				: true;
	}
}
