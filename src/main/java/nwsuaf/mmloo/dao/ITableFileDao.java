package nwsuaf.mmloo.dao;

import org.springframework.stereotype.Repository;

import nwsuaf.mmloo.entity.User;

@Repository
public interface ITableFileDao {
	
	public void insertFile(User user);

	public User getUser(User user);
}
