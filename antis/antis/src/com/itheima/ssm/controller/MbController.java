package com.itheima.ssm.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itheima.ssm.po.Bftj;
import com.itheima.ssm.po.Fpxm;
import com.itheima.ssm.po.Mb;
import com.itheima.ssm.po.Page;
import com.itheima.ssm.service.MbService;

@Controller
@RequestMapping("/mb")
public class MbController {
@Autowired
private MbService MbService;

@RequestMapping("/mbdy")
public String mbdy(ModelMap model, HttpServletRequest request,
		HttpServletResponse response) throws Exception {
	String pageNow = request.getParameter("pageNow");
	Page page = null;
	List<Mb> MbList = null;
	int totalCount = (int) MbService.getAllMbCount();
	if (pageNow != null) {
		page = new Page(totalCount, Integer.parseInt(pageNow));
		MbList = MbService.getMbList(page);
	} else {
		page = new Page(totalCount, 1);
		MbList = MbService.getMbList(page);
		// users = userMapper.getAllUser();
	}
	model.addAttribute("page", page);
	model.addAttribute("MbList", MbList);
	return "/xxgl";
}

@RequestMapping("/querymb")
public String querymb(Map<String,Object> model,String mbt) throws Exception{
	List<Mb> MbList=MbService.findmbbymbt(mbt);
	model.put("MbList", MbList);
//	System.out.println(MbList);
	return "/xxgl2";
}

@RequestMapping(value="/editmb",method = {RequestMethod.GET,RequestMethod.POST})
public String editmb(Model model, Integer id,HttpServletRequest request){
	request.setAttribute("MbList", MbService.findmbbyid(id));  
    model.addAttribute("MbList",  MbService.findmbbyid(id));   
	model.addAttribute("id",id);
	return "/editxxgl";
	
}

@RequestMapping(value="/deletemb",method = {RequestMethod.GET,RequestMethod.POST})
public String deletemb(Integer id,Mb Mb,Model model){
	Mb.setMid(id);
	this.MbService.deleteMb(id);
	return "redirect:/mb/mbdy.action";
	
}

@RequestMapping(value="/updatemb",method = {RequestMethod.GET,RequestMethod.POST})
public String updatemb(Integer id,Mb Mb,HttpServletRequest request,Model model){
	Mb.setMid(id);
	this.MbService.updateMb(Mb);
	return "redirect:/mb/mbdy.action";
}


@RequestMapping(value="/addmb",method = {RequestMethod.GET,RequestMethod.POST})
public String addmb(HttpServletRequest request, Model model,String mbt,String mnr) throws Exception {
	this.MbService.insertMb(mbt, mnr);
	return "redirect:/mb/mbdy.action"; 	
}

@RequestMapping(value="/xxll",method = {RequestMethod.GET,RequestMethod.POST})
public String xxll(ModelMap model,HttpServletRequest request,
		HttpServletResponse response) throws Exception{
	String pageNow = request.getParameter("pageNow");
	Page page = null;
	List<Mb> MbList = null;
	int totalCount = (int) MbService.getAllMbCount();
	if (pageNow != null) {
		page = new Page(totalCount, Integer.parseInt(pageNow));
		MbList = MbService.getMbList(page);
	} else {
		page = new Page(totalCount, 1);
		MbList = MbService.getMbList(page);
		// users = userMapper.getAllUser();
	}
	model.addAttribute("page", page);
	model.addAttribute("MbList", MbList);
	return "/xxll";
	
}

@RequestMapping(value="/xxll2",method = {RequestMethod.GET,RequestMethod.POST})
public String xxll2(Model model, Integer id,HttpServletRequest request) throws Exception{
	request.setAttribute("MbList", MbService.findmbbyid(id));  
    model.addAttribute("MbList",  MbService.findmbbyid(id));   
	model.addAttribute("id",id);
	return "/xxll2";
	
}
}