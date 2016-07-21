package nwsuaf.mmloo.controller;

import javax.annotation.Resource;

import nwsuaf.mmloo.entity.Gshelves;
import nwsuaf.mmloo.service.GshelvesService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("gshelves")
public class GshelvesManageController {

	@Resource
	GshelvesService gshelvesSer;

	@ModelAttribute("gshelves")
	public Gshelves creatGoods() {
		return new Gshelves();
		}
	
	@RequestMapping(value = "product")
	public String product(Gshelves gshelves, String [] str ,ModelMap model) {
		gshelves = gshelvesSer.selectByGid(gshelves.getGid());
		System.out.println(gshelves.getGpa());
		String photo = gshelves.getSelfimage();
		str = photo.split ("#");
		model.addAttribute("gshelves", gshelves);
		model.addAttribute("str", str);
		return "product";
	}
/*
	// 查询商品列表
	@RequestMapping(value = "gshelvesList")
	public String getAllgoods(ModelMap model) {

		List<Gshelves> gshelveslist = new ArrayList<Gshelves>();
		gshelveslist = gshelvesSer.getAllGshelves();
		System.out.println(gshelveslist.isEmpty());
		model.addAttribute("gshelveslist", gshelveslist);
		return "list";
	}

	@RequestMapping(value = "findadd")
	public String findadd() {
		return "add";
	}

	// 增加商品
	@RequestMapping(value = "gshelvesinsert", method = RequestMethod.POST)
	public String goodsinsert(Gshelves gshelves, ModelMap model) {
		System.out.println(gshelves.getGname());
		gshelvesSer.add(gshelves);
		return "result";
	}

	// 删除商品
	@RequestMapping(value = "gshelvesdelete")
	public String goodsdelete(Gshelves gshelves, ModelMap model) {
		System.out.println("111111111");
		System.out.println(gshelves.getGid());
		gshelvesSer.delete(gshelves.getGid());
		return "result";
	}

	@RequestMapping(value = "findedit")
	public String findedit(Gshelves gshelves, ModelMap model) {
		gshelves = gshelvesSer.selectByPrimaryKey(gshelves.getGid());
		System.out.println(gshelves.getGname());
		model.addAttribute("gshelves", gshelves);
		return "edit";
	}

	// 编辑商品
	@RequestMapping(value = "gshelvesedit")
	public String goodsedit(Gshelves gshelves, ModelMap model) {
		System.out.println("111111111");
		System.out.println(gshelves.getGid());
		System.out.println(gshelves.getGname());
		// System.out.println(gshelves.getGbrand());
		System.out.println(gshelves.getGprice());
		gshelvesSer.update(gshelves);
		return "result";
	}
*/	

}
