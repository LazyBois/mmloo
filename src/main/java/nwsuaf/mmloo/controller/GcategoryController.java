package nwsuaf.mmloo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import nwsuaf.mmloo.entity.Gcategory;
import nwsuaf.mmloo.service.GcategoryService;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class GcategoryController {
	@Resource
	GcategoryService gshelvesSer;

	@ModelAttribute("gshelves")
	public Gcategory creatGoods() {
		return new Gcategory();
	}

	// 查询商品种类列表
	@RequestMapping(value = "gshelvesList")
	public String getAllgoods(ModelMap model) {

		List<Gcategory> gshelveslist = new ArrayList<Gcategory>();
		gshelveslist = gshelvesSer.getAll();
		System.out.println(gshelveslist.isEmpty());
		model.addAttribute("gshelveslist", gshelveslist);
		return "list";
	}

	@RequestMapping(value = "findadd")
	public String findadd() {
		return "add";
	}

	// 增加商品种类
	@RequestMapping(value = "gshelvesinsert", method = RequestMethod.POST)
	public String goodsinsert(Gcategory gshelves, ModelMap model) {
		//System.out.println(gshelves.getGname());
		gshelvesSer.add(gshelves);
		return "result";
	}

	// 删除商品种类
	@RequestMapping(value = "gshelvesdelete")
	public String goodsdelete(Gcategory gshelves, ModelMap model) {
		System.out.println("111111111");
		System.out.println(gshelves.getGid());
		gshelvesSer.delete(gshelves.getGid());
		return "result";
	}

	@RequestMapping(value = "findedit")
	public String findedit(Gcategory gshelves, ModelMap model) {
		gshelves = gshelvesSer.selectByPrimaryKey(gshelves.getGid());
		//System.out.println(gshelves.getGname());
		model.addAttribute("gshelves", gshelves);
		return "edit";
	}

	// 编辑商品种类
	@RequestMapping(value = "gshelvesedit")
	public String goodsedit(Gcategory gshelves, ModelMap model) {
		System.out.println("111111111");
		System.out.println(gshelves.getGid());
		//System.out.println(gshelves.getGname());
		// System.out.println(gshelves.getGbrand());
		//System.out.println(gshelves.getGprice());
		gshelvesSer.update(gshelves);
		return "result";
	}
}
