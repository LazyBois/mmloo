package nwsuaf.mmloo.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nwsuaf.mmloo.dao.IShopcartDao;
import nwsuaf.mmloo.entity.Shopcart;

/**
 * @author LazyMan
 *提供购物车的增删改查
 */
@Service
@Transactional
public class ShopcartService {

	
	//购物车
	@Resource
	private IShopcartDao shopcartDao;
	
	//添加到购物车
	public boolean insert(Shopcart record)
	{
		Shopcart shopcart = shopcartDao.selectByUnameGid(record.getUname(),record.getGid());
		record.setDate(new Date());
		if(null == shopcart)
		{
			return shopcartDao.insertShopCart(record) == 0? false:true;
		}else{
			record.setSnum(shopcart.getSnum() + record.getSnum());
			return shopcartDao.update(record) == 0? false:true;
		}
		
	}
	
	//删除购物车
	public boolean delete(Shopcart record)
	{
		return shopcartDao.delete(record) == 0? false:true;
	}
	
	//更改购物车
	public boolean update(Shopcart record)
	{
		return shopcartDao.update(record) == 0? false:true;
	}
	
	//查询购物车
	@Transactional(readOnly = true)
	public List<Shopcart> selectByUname(String uname)
	{
		return shopcartDao.getAllByUname(uname);
	}

	public Shopcart selectByUnameGid(String uname, Long gid) {		
		return shopcartDao.selectByUnameGid(uname,gid);
	}
}
