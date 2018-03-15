package com.itheima.ssm.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itheima.ssm.po.Bftj;
import com.itheima.ssm.po.Fpxm;
import com.itheima.ssm.po.Page;
import com.itheima.ssm.po.Pkh;
import com.itheima.ssm.service.BftjService;
import com.itheima.ssm.service.PkhService;

@Controller
@RequestMapping("/bftj")
public class BftjController {
	@Autowired
	private BftjService BftjService;
	
	@RequestMapping(value = "/insertbfzrr.action")
	public String regiest(HttpServletRequest request, Model model, @RequestParam(value = "txm") String txm,
			@RequestParam(value = "tzw") String tzw,@RequestParam(value = "tlxdh") String tlxdh)
			throws Exception {
		int i = BftjService.insertbfzrr(txm, tzw, tlxdh);

		if (i > 0) {

			return "redirect:/jcxx/bfwsh.action"; 

		} else { // 项目添加失败
			// 数据回显
			model.addAttribute("txm", txm);
			// 返回到项目添加页面
			return "/error";
		}
	}
	@RequestMapping("/bfgl")
	public String bfgl(ModelMap model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String pageNow = request.getParameter("pageNow");
		Page page = null;
		List<Pkh> PkhList = null;
		int totalCount = (int) BftjService.getpkhyshCount();
		if (pageNow != null) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
			PkhList = BftjService.findpkhysh(page);
		} else {
			page = new Page(totalCount, 1);
			PkhList = BftjService.findpkhysh(page);
			// users = userMapper.getAllUser();
		}
		model.addAttribute("page", page);
		model.addAttribute("PkhList", PkhList);
		List<Bftj> BftjList=BftjService.findBftjyshList(null);
		model.put("BftjList", BftjList);
		return "/bfgl";
		/*return "redirect:/bfgl.jsp";*/
	}
	
	@RequestMapping("/jdgl")
	public String jdgl(Integer pkh_pid,Pkh Pkh,String bftj_txm) throws Exception{
		this.BftjService.findpkhtidById(pkh_pid); 
		Pkh.setPid(pkh_pid);
		Pkh.setPzt("预脱贫");
		Pkh.setTxm(bftj_txm);
		this.BftjService.updatejdgl(Pkh);
//		System.out.println(Pkh);
		return "redirect:/bftj/bfgl.action";
	}
	@RequestMapping("/querypkhlb")
	public String querypkhlb(ModelMap model, HttpServletRequest request,
			HttpServletResponse response,String pxm,Integer pxh,String pzy,String pbj,String psfz) throws Exception{
		List<Pkh> PkhList=BftjService.findpkhlb(pxm,pxh,pzy,pbj,psfz);
		model.put("PkhList", PkhList);
		System.out.println(PkhList);
		List<Bftj> BftjList=BftjService.findBftjyshList(null);
		model.put("BftjList", BftjList);
		return "/bfgl2";
	}
	@RequestMapping(value = "/fpjh.action") 
	public String fpjh(ModelMap model, HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		String pageNow = request.getParameter("pageNow");
		Page page = null;
		List<Bftj> BftjList = null;
		int totalCount = (int) BftjService.getbfyshCount();
		if (pageNow != null) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
			BftjList = BftjService.findbfysh(page);
		} else {
			page = new Page(totalCount, 1);
			BftjList = BftjService.findbfysh(page);
			// users = userMapper.getAllUser();
		}
		model.addAttribute("page", page);
		model.addAttribute("BftjList", BftjList);
		return "/fpjh";
	}
	
	@RequestMapping(value = "/zdfpjh.action",method = {RequestMethod.GET,RequestMethod.POST})
	public String zdfpjh(Model model, Integer id,HttpServletRequest request) throws Exception{
		 request.setAttribute("BftjList", BftjService.findbftjbyId(id));
	     model.addAttribute("BftjList", BftjService.findbftjbyId(id));   
	     model.addAttribute("id",id);
		return "/zdfpjh";		
	}
	
	@RequestMapping(value = "/updatefpjh.action",method=RequestMethod.POST)
	public String updatefpjh(Integer id,HttpServletRequest request,Model model,Bftj Bftj){
		Bftj.setTid(id);
		this.BftjService.updatefpjh(Bftj);
		return "redirect:/bftj/fpjh.action";
	}
	@RequestMapping(value = "/fpcs.action") 
	public String fpcs(ModelMap model, HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		String pageNow = request.getParameter("pageNow");
		Page page = null;
		List<Pkh> PkhList = null;
		int totalCount = (int) BftjService.getpkhyshCount();
		if (pageNow != null) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
			PkhList = BftjService.findpkhysh(page);
		} else {
			page = new Page(totalCount, 1);
			PkhList = BftjService.findpkhysh(page);
			// users = userMapper.getAllUser();
		}
		model.addAttribute("page", page);
		model.addAttribute("PkhList", PkhList);
		return "/fpcs";
	}
	
	@RequestMapping(value = "/zdfpcs.action") 
	public String zdfpcs(Model model, Integer id,HttpServletRequest request){
		request.setAttribute("PkhList", BftjService.findpkhbyId(id));
	     model.addAttribute("PkhList", BftjService.findpkhbyId(id));   
	     model.addAttribute("id",id);
		return "/zdfpcs";
		
	}
	
	@RequestMapping(value="/updatefpcs.action")
	public String updatefpcs(Integer id,HttpServletRequest request,Model model,Pkh Pkh){
		Pkh.setPid(id);
		this.BftjService.updatefpcs(Pkh);
		return "redirect:/bftj/fpcs.action";
		
	}
	@RequestMapping(value="/rwgz.action")
	public String rwgz(ModelMap model, HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		String pageNow = request.getParameter("pageNow");
		Page page = null;
		List<Bftj> BftjList = null;
		int totalCount = (int) BftjService.getbfyshCount();
		if (pageNow != null) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
			BftjList = BftjService.findbfysh(page);
		} else {
			page = new Page(totalCount, 1);
			BftjList = BftjService.findbfysh(page);
			// users = userMapper.getAllUser();
		}
		model.addAttribute("page", page);
		model.addAttribute("BftjList", BftjList);
		return "/rwgz";
		
	}
	
	@RequestMapping(value="/rwgz2.action")
	public String rwgz2(Model model, Integer id,HttpServletRequest request) throws Exception{
		request.setAttribute("BftjList", BftjService.findbftjbyId(id));
	     model.addAttribute("BftjList", BftjService.findbftjbyId(id));   
	     model.addAttribute("id",id);
		return "/rwgz2";
		
	}
	
	@RequestMapping(value="/updaterwgz.action")
	public String updaterwgz(Integer id,HttpServletRequest request,Model model,Bftj Bftj){
		Bftj.setTid(id);
		this.BftjService.updaterwgz(Bftj);
		return "redirect:/bftj/rwgz.action";	
	}
	@RequestMapping("/bftj")
	public String bftj(ModelMap model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String pageNow = request.getParameter("pageNow");
		Page page = null;
		List<Bftj> BftjList = null;
		int totalCount = (int) BftjService.getbfyshCount();
		if (pageNow != null) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
			BftjList = BftjService.findbfysh(page);
		} else {
			page = new Page(totalCount, 1);
			BftjList = BftjService.findbfysh(page);
			// users = userMapper.getAllUser();
		}
		model.addAttribute("page", page);
		model.addAttribute("BftjList", BftjList);
		return "/khgl";
	}
	
	@RequestMapping("/querybftj")
	public String querybftj(String txm,ModelMap model, HttpServletRequest request,HttpServletResponse response) throws Exception{
		List<Bftj> BftjList=BftjService.findbftjbytxm(txm);
		model.put("BftjList", BftjList);
		return "/khgl2";
	}
	@RequestMapping(value="/jxkh.action")
	public String jxkh(ModelMap model, HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		String pageNow = request.getParameter("pageNow");
		Page page = null;
		List<Bftj> BftjList = null;
		int totalCount = (int) BftjService.getbfyshCount();
		if (pageNow != null) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
			BftjList = BftjService.findbfysh(page);
		} else {
			page = new Page(totalCount, 1);
			BftjList = BftjService.findbfysh(page);
			// users = userMapper.getAllUser();
		}
		model.addAttribute("page", page);
		model.addAttribute("BftjList", BftjList);
		return "/jxkh";	
	}
	
	@RequestMapping(value="/jxkh2.action")
	public String jxkh2(Model model, Integer id,HttpServletRequest request){
		request.setAttribute("BftjList", BftjService.findbftjbyIdbfb(id));
	     model.addAttribute("BftjList", BftjService.findbftjbyIdbfb(id));  
	     model.addAttribute("id",id);
		return "/jxkh2";
		
	}
/*	
	public String Bftj(Map<String,Object> model,Bftj Bftj) throws Exception{
		List<Pkh> PkhList=BftjService.findPkhList(null);
		List<Village> VillageList=BftjService.findVillageList(null);
		List<Bftj> BftjList=BftjService.findBftjList(null);
		List<Organize> OrganizeList=BftjService.findOrganizeList(null);
		model.put("OrganizeList", OrganizeList);
		model.put("PkhList", PkhList);
		model.put("VillageList", VillageList);
		model.put("BftjList", BftjList);
		System.out.println("1");
		System.out.println("1");
		System.out.println("1");
		return "/bfgl";
	}
	public String bftj(Map<String,Object> model) throws Exception{
		List<Bftj> BftjList=BftjService.findBftjList(null);
		model.put("BftjList", BftjList);
		List<Bftj> bftjsum=BftjService.findbftjsum(null);		
		System.out.println(bftjsum);
		return "/khgl";
	}
	
	
	@RequestMapping("/exportbftj")
	public String exportbftj(){
		return "/khgl";
	}
	
	@RequestMapping(value="/frontinsertbfzrr.action")
	public String frontinsertbfzrr(HttpServletRequest request, Model model, @RequestParam(value = "txm") String txm,
			@RequestParam(value = "tdw") String tdw, @RequestParam(value = "tzw") String tzw,
			@RequestParam(value = "tlxdh") String tlxdh,@RequestParam(value = "tlxdh") Integer tgold)
			throws Exception {
		int i = BftjService.insertbfzrr2(txm, tdw, tzw, tlxdh,tgold);

		if (i > 0) {

			return "redirect:/FrontPage/index.jsp"; 

		} else { // 项目添加失败
			// 数据回显
			model.addAttribute("txm", txm);
			// 返回到项目添加页面
			return "/error";
		}
	}
	*/
}
