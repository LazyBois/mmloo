package nwsuaf.mmloo.service;

import java.util.List;

import javax.annotation.Resource;

import nwsuaf.mmloo.dao.IGpropertDao;
import nwsuaf.mmloo.entity.Gpropert;
import nwsuaf.mmloo.entity.Shopcart;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class GpropertService {
	@Resource
	private IGpropertDao gpropertDao;

	public boolean add(Gpropert record) {
		return gpropertDao.insert(record) == 0 ? false : true;
	}

	public boolean addSelective(Gpropert record) {
		return gpropertDao.insertSelective(record) == 0 ? false : true;
	}

	public boolean delete(int deleteid) {
		return gpropertDao.deleteByPrimaryKey(deleteid) == 0 ? false : true;
	}

	public boolean update(Gpropert record) {
		return gpropertDao.updateByPrimaryKey(record) == 0 ? false : true;
	}

	public boolean updateSelective(Gpropert record) {
		return gpropertDao.updateByPrimaryKeySelective(record) == 0 ? false
				: true;
	}

	public List<Shopcart> getAll(String uname) {
		return null;
	}
}
