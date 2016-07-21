package nwsuaf.mmloo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import nwsuaf.mmloo.entity.Gcategory;

@Repository
public interface IGcategoryDao {
	// 增加商品分类
	int insert(Gcategory record);

	// 删除商品分类
	int deleteClassification(long id);

	// 更新商品分类
	int updateClassification(Gcategory record);

	// 获取所有商品分类
	List<Gcategory> getAllClassification();

	// 选择商品分类
	Gcategory selectByPrimaryKey(Long gid);

	int insertSelective(Gcategory record);
}