package nwsuaf.mmloo.power;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import nwsuaf.mmloo.dao.IUserDao;
import nwsuaf.mmloo.entity.User;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * @author LazyMan 用于对用户权限的检验
 *
 */
public class AuthorityAnnotationInterceptor extends HandlerInterceptorAdapter {
	@Resource
	private IUserDao userDao;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        HandlerMethod handler2=(HandlerMethod) handler;
        FireAuthority fireAuthority = handler2.getMethodAnnotation(FireAuthority.class);

        if(null == fireAuthority){
            //没有声明权限,放行
            return true;
        }       

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        //未登陆用户 跳转到loadLogin
        if(null == user || null == user.getUname()||"".equals(user.getUname()))
        {
            StringBuilder sb = new StringBuilder();
            sb.append(request.getContextPath());
            response.sendRedirect(sb.toString()+"/loadLogin.do");
        	return false;
        }

        boolean aflag = false;
        AuthorityType login = fireAuthority.value();
        //用户身份核验
        if(null != login && login.getName().equals("login"))
        {
        	if(null != user && 1 == userDao.selectByUnameIp(user)){
        		aflag = true;
        	}
        }
//        if("login".equals(fireAuthority.annotationType()))
//        {
//        	return true;
//        }
//        for(AuthorityType at:fireAuthority.authorityTypes()){
//        	System.out.println(at.getIndex());
//        	System.out.println(at.getName());
//        	/*
//            if(AuthorityHelper.hasAuthority(at.getName(), user)==true){
//            	System.out.println("56565");
//                aflag = true;
//                break;
//            }
//            */
//        }
        if(aflag)
        {
        	return true;
        }else{
        	
            StringBuilder sb = new StringBuilder();
            sb.append(request.getContextPath());
            response.sendRedirect(sb.toString()+"/loadLogin.do");
        	return false;
        }
    }

}