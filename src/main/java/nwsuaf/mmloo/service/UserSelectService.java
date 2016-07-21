package nwsuaf.mmloo.service;

import java.util.Date;

import javax.annotation.Resource;

import nwsuaf.mmloo.dao.IUserDao;
import nwsuaf.mmloo.entity.User;
import nwsuaf.mmloo.util.MD5;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author LazyMan 提供用户的查询服务
 *
 */
@Service
@Transactional(readOnly=true)
public class UserSelectService {

	@Resource
	private IUserDao userDao;

	//登陆
	public User login(User user,String ip) {
		if (!"".equals(user.getPassword())) {
			user.setPassword(MD5.makeMD5(user.getPassword()));
			user = userDao.findByNamePw(user);
			if(null != user)
			{
				
//				String lastIp = user.getIp();
				Date lastTime = user.getNowtime();
				Date nowTime = new Date();
				user.setLasttime(lastTime);
				user.setNowtime(nowTime);
				user.setIp(ip);
				userDao.upLogin(user);
				user.getNowtime();
			}
			return user;
		}
		return null;
	}
	
	//用户名查重
	public boolean isUnameExist(String uname)
	{
		return userDao.findByUname(uname) == 0?false:true;
	}
	
	//邮箱查重
	public boolean isMailExist(String mail)
	{
		return userDao.findByMail(mail) == 0?false:true;
	}
	
	//获取用户信息
	public User selectUserByUname(String uname) {
		return userDao.selectByUname(uname);
	}
}
