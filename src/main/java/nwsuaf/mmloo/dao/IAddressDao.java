package nwsuaf.mmloo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import nwsuaf.mmloo.entity.Address;

@Repository
public interface IAddressDao {

	List<Address> selectByUname(String uname);
	
	int updateById(Address address);
	
	
	int deleteById(Address address);
	
	int insert(Address address);
}
