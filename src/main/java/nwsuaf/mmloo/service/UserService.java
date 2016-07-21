package nwsuaf.mmloo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nwsuaf.mmloo.dao.IUserDao;
import nwsuaf.mmloo.entity.Balance;
import nwsuaf.mmloo.entity.Point;
import nwsuaf.mmloo.entity.User;
import nwsuaf.mmloo.util.MD5;
import nwsuaf.mmloo.util.RandomPass;

/**
 * @author LazyMan
 * 此类用于为会员提供修改服务
 *
 */
@Service
@Transactional
public class UserService {	
	@Resource
	private IUserDao userDao;
		
	@Resource
	private PointService pSer;
	
	@Resource
	private BalanceService bSer;

	//正常注册注册
	public boolean regist(User user)
	{
		user.setPassword(MD5.makeMD5(user.getPassword()));
		return userDao.insertUser(user) == 0?false:true;
	}
	
	/**
	 * @return
	 * 匿名注册 使用用户提供的手机号 并为其提供随机密码
	 */
	public boolean registHide(User user)
	{
		user.setPassword(MD5.makeMD5(RandomPass.randomKey()));
		return userDao.insertUser(user) == 0?false:true;
	}
		
	//邮箱验证
	public User checkMcode(String email, String mcode) {
		String mail =email + "#"+mcode; 
		User user = userDao.findByMcode(mail);
		if(null == user)
		{
			return null;
		}else{
			user.setEmail(email);
			userDao.upMailByUname(user);
			return user;
		}
	}

	//修改邮箱
	public boolean upMailByUname(User user) {
		return userDao.upMailByUname(user) == 0? false : true;		
	}

	//修改密码
	public boolean upPasswd(User user,String password) {
		user.setPassword(MD5.makeMD5(password));
		return userDao.upPasswd(user) == 0 ? false:true;
	}
	
	//修改个人信息
	public boolean upInfo(User user) {
		return userDao.upInfo(user) == 0 ? false:true;
	}

	/**
	 * @param uname 
	 * @param money 
	 * @param message 备注信息
	 * @return 根据用户名  更新余额
	 */
	public boolean updateBalanceByUname(User user, float money,String message) {
		
		if(null == user || null == message)
		{
			return false;
		}
		

		Balance balance = new Balance();
		balance.setPut(money);
		balance.setDescribes(message);
		balance.setUname(user.getUname());
		
		if(!bSer.insert(balance))
		{
			return false;
		}
		user.setBalance(user.getBalance() + money);
		
		userDao.updateBalanceByUname(user) ;
		
		return true;
	}

	public User selectByUname(String uname) {
		if(null == uname || "".equals(uname))
		{
			return null;
		}
		return userDao.selectByUname(uname);
	}
	
	//积分插入
	public boolean insertPoint(String uname,float p,String message){		
		User user = selectByUname(uname);
		
		Point point = new Point();
		point.setUname(uname);
		point.setPud(p);
		point.setPcomment(message);
		
		user.setCredit(user.getCredit() + p);
		upInfo(user);
		return pSer.insert(point);
	}

}
