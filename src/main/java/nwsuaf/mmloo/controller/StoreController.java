package nwsuaf.mmloo.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import nwsuaf.mmloo.entity.Gshelves;
import nwsuaf.mmloo.entity.Mistore;
import nwsuaf.mmloo.entity.User;
import nwsuaf.mmloo.service.GshelvesService;
import nwsuaf.mmloo.service.MistoreService;
import nwsuaf.mmloo.service.UserService;

/**
 * @author LazyMan
 * 此类用于米店的管理 包括：注册 登陆  店铺信息的修改
 */
@Controller
@SessionAttributes("user")
public class StoreController {

	@Resource
	UserService service;
	
	@Resource
	GshelvesService gsSer;
	
	@Resource
	MistoreService mSer;
	
	@ModelAttribute("user")
	public User creatUser()
	{
	    return new User();
	}
	
	
	//米店注册页面请求
	//米店页面
	@RequestMapping(value="registeMistore")
	//权限审核 先判断user是登录者  在判断米店如果无米店 则跳转米店注册页面
	public String registeMistore()
	{
		return "registe";
	}
	
	//米店注册
	@RequestMapping(value="doRegisteMistore",method=RequestMethod.POST)
	public String doRegisteMistore(Mistore record,Model model)
	{
		mSer.insertMistore(record);
		return "forward:showMistore.do";
	}
	
	//商品上架
	@RequestMapping(value="addGshelves")
	public String addGshelves(Gshelves record,Model model)
	{
		gsSer.insert(record);
		return "forward:showMistore.do";
	}
	
	
	//米店展现
	@RequestMapping(value="showMistore")
	public String showMistore(@ModelAttribute("user") User user, ModelMap model)
	{
		Mistore m = mSer.selectByUname(user.getUname());
		if(null == m)
		{
			return "openstore";
		}
		
		List<Gshelves> gshelveList = gsSer.selectByMid(m.getMid());
		
		for(Gshelves g:gshelveList)
		{
			String imagePath = "";
			if((imagePath = g.getSelfimage()) != null)
			{
				imagePath = imagePath.split("#")[0];
			}		 
			g.setSelfimage(imagePath);
		}
		model.addAttribute("mistore", m);		
		model.addAttribute("gshelveList", gshelveList);		
		return "mystore";
	}
}
