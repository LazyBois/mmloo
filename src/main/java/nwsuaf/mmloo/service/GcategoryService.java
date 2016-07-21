package nwsuaf.mmloo.service;

import java.util.List;

import javax.annotation.Resource;

import nwsuaf.mmloo.dao.IGcategoryDao;
import nwsuaf.mmloo.entity.Gcategory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class GcategoryService {
	@Resource
	private IGcategoryDao gcategoryDao;

	// 增加商品分类
	public boolean add(Gcategory record) {
		return gcategoryDao.insert(record) == 0 ? false : true;
	}

	// 删除商品分类
	public boolean delete(long id) {
		return gcategoryDao.deleteClassification(id) == 0 ? false : true;
	}

	// 更新商品分类
	public boolean update(Gcategory record) {
		return gcategoryDao.updateClassification(record) == 0 ? false : true;
	}

	// 获取商品分类列表
	public List<Gcategory> getAll() {
		return gcategoryDao.getAllClassification();
	}
	
	//选择商品分类
	public Gcategory selectByPrimaryKey(long id) {
		return gcategoryDao.selectByPrimaryKey(id);
	}
	public boolean addSelective(Gcategory record) {
		return gcategoryDao.insertSelective(record) == 0 ? false : true;
	}
}
