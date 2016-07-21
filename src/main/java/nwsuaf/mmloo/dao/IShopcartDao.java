package nwsuaf.mmloo.dao;

import java.util.List;

import nwsuaf.mmloo.entity.Shopcart;

public interface IShopcartDao {
	
	int insertShopCart(Shopcart record);
	int delete(Shopcart record);
	int update(Shopcart record);
	List<Shopcart> getAllByUname(String uname);
	Shopcart selectByUnameGid(String uname, Long gid);
}