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
import org.springframework.web.servlet.ModelAndView;

import com.itheima.ssm.po.Bftj;
import com.itheima.ssm.po.Fpxm;
import com.itheima.ssm.po.Page;
import com.itheima.ssm.po.Pkh;
import com.itheima.ssm.po.pkhgj;
import com.itheima.ssm.service.BftjService;

@Controller
@RequestMapping("/jcxx")
public class JcxxController {
	@Autowired
	private BftjService BftjService;

	@RequestMapping("/bftjjcxx")
	public String bftjjcxx(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
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
		return "/bftjjcxx";
	}

	@RequestMapping(value = "/editbftj.action")
	public String editbftj(Model model, Integer id, HttpServletRequest request) throws Exception {
		request.setAttribute("BftjList", BftjService.findbftjbyId(id));
		model.addAttribute("BftjList", BftjService.findbftjbyId(id));
		model.addAttribute("id", id);
		return "/editbftj";
	}

	@RequestMapping(value = "/updatebftj", method = RequestMethod.POST)
	public String updatebftj(Integer id, Bftj Bftj, HttpServletRequest request, Model model) {
		Bftj.setTid(id);
		this.BftjService.updatebftj(Bftj);
		return "redirect:/jcxx/bftjjcxx.action";

	}

	@RequestMapping("/deletebftj")
	public String deletebftj(Integer id, Bftj Bftj, Model model) {
		Bftj.setTid(id);
		this.BftjService.deletebftj(id);
		return "redirect:/jcxx/bftjjcxx.action";
	}

	@RequestMapping("/pkhjcxx")
	public String pkhjcxx(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
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
		return "/pkhjcxx";

	}

	@RequestMapping(value = "/editpkh.action")
	public String editpkh(Model model, Integer id, HttpServletRequest request) {
		request.setAttribute("PkhList", BftjService.findpkhbyId(id));
		model.addAttribute("PkhjList", BftjService.findpkhbyId(id));
		model.addAttribute("id", id);
		return "/editpkh";

	}

	@RequestMapping(value = "/updatepkh", method = RequestMethod.POST)
	public String updatepkh(Integer id, Pkh Pkh, HttpServletRequest request, Model model) {
		Pkh.setPid(id);
		this.BftjService.updatepkh(Pkh);
		return "redirect:/jcxx/pkhjcxx.action";

	}

	@RequestMapping("/deletepkh")
	public String deletepkh(Integer id, Pkh Pkh, Model model) {
		Pkh.setPid(id);
		this.BftjService.deletepkh(id);
		return "redirect:/jcxx/pkhjcxx.action";
	}

	@RequestMapping(value = "/insertpkh.action")
	public String regiest(HttpServletRequest request, Model model, @RequestParam(value = "pxm") String pxm,
			@RequestParam(value = "psfz") String psfz, @RequestParam(value = "plxdh") String plxdh,
			@RequestParam(value = "pjtrk") String pjtrk, @RequestParam(value = "ppkhsx") String ppkhsx,
			@RequestParam(value = "pzyzpyy") String pzyzpyy, @RequestParam(value = "pzyzpxxyy") String pzyzpxxyy,
			@RequestParam(value = "pmz") String pmz, @RequestParam(value = "pgold") Integer pgold,
			@RequestParam(value = "pxh") Integer pxh, @RequestParam(value = "pjtzz") String pjtzz,
			@RequestParam(value = "pzy") String pzy, @RequestParam(value = "pbj") String pbj,
			@RequestParam(value = "pxb") String pxb, @RequestParam(value = "pnl") String pnl)

			throws Exception {
		int i = BftjService.insertpkh(pxm, psfz, plxdh, pjtrk, ppkhsx, pzyzpyy, pzyzpxxyy, pmz, pgold, pjtzz, pxh, pzy,
				pbj, pxb, pnl);

		if (i > 0) {

			return "redirect:/jcxx/pkhwsh.action";

		} else { // 项目添加失败
			// 数据回显

			// 返回到项目添加页面
			return "/error";
		}
	}

	@RequestMapping("/pkhwsh")
	public String pkhwsh(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pageNow = request.getParameter("pageNow");
		Page page = null;
		List<Pkh> PkhList = null;
		int totalCount = (int) BftjService.getpkhwshCount();
		if (pageNow != null) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
			PkhList = BftjService.findpkhwsh(page);
		} else {
			page = new Page(totalCount, 1);
			PkhList = BftjService.findpkhwsh(page);
			// users = userMapper.getAllUser();
		}
		model.addAttribute("page", page);
		model.addAttribute("PkhList", PkhList);
		return "/pkhsh";
	}

	@RequestMapping(value = "/pkhsh", method = { RequestMethod.POST, RequestMethod.GET })
	public String pkhsh(Integer id, Pkh Pkh, HttpServletRequest request, Model model) throws Exception {
		request.setAttribute("PkhList", BftjService.findpkhbyId(id));
		model.addAttribute("PkhjList", BftjService.findpkhbyId(id));
		model.addAttribute("id", id);
		return "/pkhsh2";

	}

	@RequestMapping("/shtg")
	public String shtg(Integer id, Pkh Pkh, Model model, HttpServletRequest request) {
		Pkh.setPid(id);
		String pshzt = "已通过";
		Pkh.setPshzt(pshzt);
		this.BftjService.updatepkhsh(Pkh);
		// System.out.println(id);
		return "redirect:/jcxx/pkhwsh.action";
	}

	@RequestMapping("/shbtg")
	public String shbtg(Integer id, Pkh Pkh, Model model) {
		Pkh.setPid(id);
		this.BftjService.deletepkh(id);
		// System.out.println(id);
		return "redirect:/jcxx/pkhwsh.action";
	}

	@RequestMapping("/bfwsh")
	public String bfwsh(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pageNow = request.getParameter("pageNow");
		Page page = null;
		List<Bftj> BftjList = null;
		int totalCount = (int) BftjService.getbfwshCount();
		if (pageNow != null) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
			BftjList = BftjService.findbfwsh(page);
		} else {
			page = new Page(totalCount, 1);
			BftjList = BftjService.findbfwsh(page);
			// users = userMapper.getAllUser();
		}
		model.addAttribute("page", page);
		model.addAttribute("BftjList", BftjList);
		return "/bfsh";
	}

	@RequestMapping("/bfshtg")
	public String bfshtg(Integer id, Bftj Bftj, Model model) {
		System.out.println(id);
		Bftj.setTid(id);
		Bftj.setTshzt("已通过");
		this.BftjService.updatebfsh(Bftj);
		return "redirect:/jcxx/bfwsh.action";
	}

	@RequestMapping("/bfshbtg")
	public String bfshbtg(Integer id, Bftj Bftj, Model model) {
		Bftj.setTid(id);
		this.BftjService.deletebfsh(id);
		return "redirect:/jcxx/bfwsh.action";

	}

	@RequestMapping("/pkhgj")
	public String pkhgj(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pageNow = request.getParameter("pageNow");
		Page page = null;
		List<pkhgj> PkhList = null;
		int totalCount = (int) BftjService.pkhgjCount();
		if (pageNow != null) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
			PkhList = BftjService.pkhgj(page);
		} else {
			page = new Page(totalCount, 1);
			PkhList = BftjService.pkhgj(page);
			// users = userMapper.getAllUser();
		}
		model.addAttribute("page", page);
		model.addAttribute("PkhList", PkhList);
		System.out.println(PkhList);
		return "/pkhgj";
	}

	@RequestMapping("/pkhgj2")
	public String pkhgj2(Integer id, Pkh Pkh, HttpServletRequest request, Model model) throws Exception {
		request.setAttribute("PkhList", BftjService.findpkhbyId(id));
		model.addAttribute("PkhjList", BftjService.findpkhbyId(id));
		model.addAttribute("id", id);
		return "/pkhgj2";
	}

	@RequestMapping(value = "/updatepkhgj.action")
	public String updatepkhgj(Integer id, String pzt, HttpServletRequest request, Model model, Pkh Pkh) {
		Pkh.setPid(id);
		Pkh.setPzt(pzt);
		this.BftjService.updatepkhgj(Pkh);
		return "redirect:/jcxx/pkhgj.action";

	}

	@RequestMapping(value = "/insertfrontpkh.action")
	public String insertfrontpkh(HttpServletRequest request, Model model, @RequestParam(value = "pxm") String pxm,

			@RequestParam(value = "plxdh") String plxdh, @RequestParam(value = "pjtrk") String pjtrk,

			@RequestParam(value = "ppkhsx") String ppkhsx, @RequestParam(value = "pmz") String pmz,

			@RequestParam(value = "pjtzz") String pjtzz, @RequestParam(value = "psfz") String psfz,

			@RequestParam(value = "pgold") Integer pgold)

			throws Exception {
		int i = BftjService.insertfrontpkh(pxm, psfz, plxdh, pjtrk, ppkhsx, pmz, pjtzz,pgold);

		if (i > 0) {

			return "redirect:/FrontPage/index.jsp";

		} else { // 项目添加失败 // 数据回显

			// 返回到项目添加页面 return "/error"; } }

		}
		return psfz;
	}
}