package nwsuaf.mmloo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nwsuaf.mmloo.dao.IAddressDao;
import nwsuaf.mmloo.entity.Address;

/**
 * @author LazyMan
 *提供地址的增删改查
 */
@Service
@Transactional
public class AddressService {
	
	@Resource
	private IAddressDao addressDao;	
	/**
	 * @param address
	 * @return 这条记录的主键
	 */
	public int insert(Address address)
	{
		return addressDao.insert(address);
	}
	
	public boolean update(Address address)
	{
		return addressDao.updateById(address) == 0? false:true;
	}
	
	public boolean delete(Address address)
	{
		return addressDao.deleteById(address) == 0? false:true;
	}
	
	public List<Address> selectByUname(String uname){
		return addressDao.selectByUname(uname);
	}
}
