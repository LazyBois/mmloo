package nwsuaf.mmloo.dao;

import org.springframework.stereotype.Repository;

import nwsuaf.mmloo.entity.User;

@Repository
public interface IUserDao {

	User findByNamePw(User user);
	
	int insertUser(User user);
	
	int findByUname(String uname);
	
	int findByMail(String email);
	
	User selectUserAddress(String uname);
	
	User selectByUname(String uname);
	
	//根据用户名和IP 选择记录
	int selectByUnameIp(User user);
	
	User findByMcode(String mail);

	//更新邮箱
	int upMailByUname(User user);

	//更新密码
	int upPasswd(User user);
	
	//更新个人信息
	int upInfo(User user);

	void upLogin(User user);

	int updateBalanceByUname(User user);
}
