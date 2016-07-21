package nwsuaf.mmloo.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import nwsuaf.mmloo.entity.Gshelves;
import nwsuaf.mmloo.entity.Mistore;
import nwsuaf.mmloo.entity.Mpoint;
import nwsuaf.mmloo.power.AuthorityType;
import nwsuaf.mmloo.power.FireAuthority;
import nwsuaf.mmloo.service.GshelvesService;
import nwsuaf.mmloo.service.MistoreService;
import nwsuaf.mmloo.util.PageParam;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.alibaba.fastjson.JSON;

/**
 * @author LazyMan 管理员 管理功能
 * 
 */
@Controller
@SessionAttributes("user")
// @RequestMapping("admin")
public class AdminController {

	@Resource
	MistoreService mSer;

	@Resource
	GshelvesService gSer;

	// 通知信息（申请注册的商家数量 申请上架的商品数量 积分小于50且处于通过状态的表
	// @ResponseBody
	@RequestMapping(value = "message")
	@FireAuthority(AuthorityType.LOGIN)
	@ResponseBody
	public String show() {
		String state = "'审核中'";
		int mCount = mSer.getMistroteRowCount(state);// 处于审核中状态的米店
		int gCount = gSer.getShelveRowCount(state);// 处于审核中商品上架
		int mpCOunt = mSer.getMistorePoitnRowCount((float)50.01, "'通过'");// 积分小于等于50 且状态等于 通过 的米店
		Map<String,Object> result=new HashMap<String,Object>();
		result.put("mCount", mCount);
		result.put("gCount", gCount);
		result.put("mpCOunt", mpCOunt);
		return JSON.toJSONString(result);
	}

	// 显示商家注册申请页面请求
	@FireAuthority(AuthorityType.LOGIN)
	@RequestMapping(value = "showAllMistroe")
	public String showAllMistroe(String pages, ModelMap model) {
		int currPage = 1;
		try {
			currPage = Integer.parseInt(pages);
		} catch (Exception e) {

		}
		PageParam<Mistore> pageParam = mSer.selectByState(null, null, currPage);
		model.addAttribute("pageParam", pageParam);
		return "managePage";
	}

	// 显示商家注册申请json请求
	@FireAuthority(AuthorityType.LOGIN)
	@RequestMapping(value = "showMistroe",produces = "text/html;charset=UTF-8")	
	public @ResponseBody String showMistroe(String state, String point, String pages,
			ModelMap model) {
		int currPage = 1;
		try {
			currPage = Integer.parseInt(pages);
		} catch (Exception e) {

		}
		state = "'" + state + "'";
		PageParam<Mistore> pageParam = mSer.selectByState(state, point,
				currPage);	
		return JSON.toJSONString(pageParam);
	}

	// 修改米店状态(修改审核状态 若未通过 则要修改审核备注)
	@FireAuthority(AuthorityType.LOGIN)
	@RequestMapping(value = "upStateMistroe")
	@ResponseBody
	public String upStateMistroe(Mistore m) {
		return mSer.upStateById(m)?"true":"false";
	}


	// 修改米店积分
	@FireAuthority(AuthorityType.LOGIN)
	@RequestMapping(value = "upMpoint")
	@ResponseBody
	public String upMpoint(Mpoint record) {
		return mSer.insertMpoint(record) + "";
	}

	// 显示通过上架商品（默认显示未审核通过的） 按照店号归类 按照时间 升序排列
	@RequestMapping(value = "showGshelves",produces = "text/html;charset=UTF-8")	
	@ResponseBody
	public String showGshelves(String state, String pages) {
		int currPage = 1;
		if (null != pages && !"".equals(pages)) {
			try {
				currPage = Integer.parseInt(pages);
			} catch (Exception e) {

			}
		}
		state = "'" + state + "'";
		PageParam<Gshelves> pageParam = gSer.selectByState(state, currPage);
		return JSON.toJSONString(pageParam);
	}

	// 审核上架商品(修改审核状态 若未通过 则要修改审核备注)
	@RequestMapping(value = "upGshelves")
	@ResponseBody
	public String upGshelves(Long gid,String state) {
		return gSer.updateStateByGid(gid,state)?"true":"false";
	}
}
