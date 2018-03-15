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

import com.itheima.ssm.po.Fpxm;
import com.itheima.ssm.po.Page;
import com.itheima.ssm.service.FpxmService;
@Controller	
@RequestMapping("/fpxm")
public class FpxmController {
	@Autowired
	private FpxmService FpxmService;
	
@RequestMapping("/xmsq")
public String xmsq(ModelMap model, HttpServletRequest request,
		HttpServletResponse response) throws Exception {
	String pageNow = request.getParameter("pageNow");
	Page page = null;
	List<Fpxm> FpxmList = null;
	int totalCount = (int) FpxmService.getAllFpxmCount();
	if (pageNow != null) {
		page = new Page(totalCount, Integer.parseInt(pageNow));
		FpxmList = FpxmService.getFpxmList(page);
	} else {
		page = new Page(totalCount, 1);
		FpxmList = FpxmService.getFpxmList(page);
		// users = userMapper.getAllUser();
	}
	model.addAttribute("page", page);
	model.addAttribute("FpxmList", FpxmList);
	return "/fpxm";
}
public String xmsq(Map<String,Object> model) throws Exception{
	List<Fpxm> FpxmList=FpxmService.findFpxmList(null);
	model.put("FpxmList", FpxmList);
	return "/fpxm";
}

@RequestMapping("/queryfpxm")
public String queryfpxm(Map<String,Object> model,String xxmmc) throws Exception{
	List<Fpxm> FpxmList=FpxmService.findfpxm(xxmmc);
	model.put("FpxmList",FpxmList);
	return "/fpxm2";
}

@RequestMapping(value = "/insertfpxm.action")
public String regiest(HttpServletRequest request, Model model, @RequestParam(value = "xxmmc") String xxmmc,
		@RequestParam(value = "xlb") String xlb, @RequestParam(value = "xjsnrjgm") String xjsnrjgm,
		@RequestParam(value = "xzrdw") String xzrdw, @RequestParam(value = "xtzze") Integer xtzze)
		throws Exception {
	int i = FpxmService.insertFpxm(xxmmc, xlb, xjsnrjgm, xzrdw, xtzze);

	if (i > 0) {

		return "redirect:/fpxm/xmsq.action"; 

	} else { // 项目添加失败
		// 数据回显
		model.addAttribute("xxmmc", xxmmc);
		// 返回到项目添加页面
		return "/error";
	}
}

@RequestMapping(value="/editfpxm",method = {RequestMethod.GET,RequestMethod.POST})
public String editfpxm(Model model, Integer id,HttpServletRequest request){
	 request.setAttribute("FpxmList", FpxmService.findfpxmById(id));  
     model.addAttribute("FpxmList", FpxmService.findfpxmById(id));   
     model.addAttribute("id",id);
	return "/editfpxm";
}

@RequestMapping("/deletefpxm")
public String deletefpxm(Integer id,Fpxm Fpxm,Model model){
	Fpxm.setXid(id);
	this.FpxmService.deletefpxm(id);
	return "redirect:/fpxm/xmsq.action";
}

@RequestMapping(value="/updatefpxm",method=RequestMethod.POST)
public String updatefpxm(Integer id,Fpxm Fpxm,HttpServletRequest request,Model model){
	Fpxm.setXid(id);
//	System.out.println(Fpxm);
	this.FpxmService.updatefpxm(Fpxm);
	return "redirect:/fpxm/xmsq.action";
}

@RequestMapping("/xmgj")
public String xmgj(ModelMap model, HttpServletRequest request,
		HttpServletResponse response) throws Exception {
	String pageNow = request.getParameter("pageNow");
	Page page = null;
	List<Fpxm> FpxmList = null;
	int totalCount = (int) FpxmService.getfpxmdspCount();
	if (pageNow != null) {
		page = new Page(totalCount, Integer.parseInt(pageNow));
		FpxmList = FpxmService.findfpxmdsp(page);
	} else {
		page = new Page(totalCount, 1);
		FpxmList = FpxmService.findfpxmdsp(page);
		// users = userMapper.getAllUser();
	}
	model.addAttribute("page", page);
	model.addAttribute("FpxmList", FpxmList);
	return "/xmgj";
}

@RequestMapping("/xmtg")
public String xmtg(Integer id,Fpxm Fpxm,Model model){
	System.out.println(id);
	Fpxm.setXid(id);	
	Fpxm.setXzt("进行中");
	this.FpxmService.updatefpxmdsp(Fpxm);
	return "redirect:/fpxm/xmgj.action";
}

@RequestMapping("/xmbtg")
public String xmbtg(Integer id,Fpxm Fpxm,Model model){
	Fpxm.setXid(id);
	this.FpxmService.deletefpxmdsp(id);
	return "redirect:/fpxm/xmgj.action";
	
}

@RequestMapping("/xmwc")
public String xmwc(ModelMap model, HttpServletRequest request,
		HttpServletResponse response) throws Exception {
	String pageNow = request.getParameter("pageNow");
	Page page = null;
	List<Fpxm> FpxmList = null;
	int totalCount = (int) FpxmService.getfpxmjxzCount();
	if (pageNow != null) {
		page = new Page(totalCount, Integer.parseInt(pageNow));
		FpxmList = FpxmService.findfpxmjxz(page);
	} else {
		page = new Page(totalCount, 1);
		FpxmList = FpxmService.findfpxmjxz(page);
		// users = userMapper.getAllUser();
	}
	model.addAttribute("page", page);
	model.addAttribute("FpxmList", FpxmList);
	return "/xmwc";
}

@RequestMapping("/xmwc2")
public String xmwc2(Integer id,Fpxm Fpxm,Model model){
	System.out.println(id);
	Fpxm.setXid(id);	
	Fpxm.setXzt("已完成");
	this.FpxmService.updatefpxmjxz(Fpxm);
	return "redirect:/fpxm/xmwc.action";
}
}
