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

import com.itheima.ssm.po.Message;
import com.itheima.ssm.po.Page;
import com.itheima.ssm.service.MessageService;

@Controller
@RequestMapping("/message")
public class MessageController {
@Autowired
private MessageService messageService;

@RequestMapping("/mbdy")
public String mbdy(ModelMap model, HttpServletRequest request,
		HttpServletResponse response) throws Exception {
	String pageNow = request.getParameter("pageNow");
	Page page = null;
	List<Message> MbList = null;
	int totalCount = (int) messageService.getAllMessageCount();
	if (pageNow != null) {
		page = new Page(totalCount, Integer.parseInt(pageNow));
		MbList = messageService.getMessageList(page);
	} else {
		page = new Page(totalCount, 1);
		MbList = messageService.getMessageList(page);
		// users = userMapper.getAllUser();
	}
	model.addAttribute("page", page);
	model.addAttribute("MbList", MbList);
	return "/xxgl";
}

@RequestMapping("/querymb")
public String querymb(Map<String,Object> model,String mbt) throws Exception{
	List<Message> MbList=messageService.findMessagebyMessaget(mbt);
	model.put("MbList", MbList);
//	System.out.println(MbList);
	return "/xxgl2";
}

@RequestMapping(value="/editmb",method = {RequestMethod.GET,RequestMethod.POST})
public String editmb(Model model, Integer id,HttpServletRequest request){
	request.setAttribute("MbList", messageService.findMessagebyid(id));  
    model.addAttribute("MbList",  messageService.findMessagebyid(id));   
	model.addAttribute("id",id);
	return "/editxxgl";
	
}

@RequestMapping(value="/deletemb",method = {RequestMethod.GET,RequestMethod.POST})
public String deletemb(Integer id,Message message,Model model){
	message.setMid(id);
	this.messageService.deleteMessage(id);
	return "redirect:/message/mbdy.action";
	
}

@RequestMapping(value="/updatemb",method = {RequestMethod.GET,RequestMethod.POST})
public String updatemb(Integer id,Message message,HttpServletRequest request,Model model){
	message.setMid(id);
	this.messageService.updateMessage(message);
	return "redirect:/message/mbdy.action";
}


@RequestMapping(value="/addmb",method = {RequestMethod.GET,RequestMethod.POST})
public String addmb(HttpServletRequest request, Model model,String mbt,String mnr) throws Exception {
	this.messageService.insertMessage(mbt, mnr);
	return "redirect:/mb/xxllfont.action"; 		
}

@RequestMapping(value="/xxll",method = {RequestMethod.GET,RequestMethod.POST})
public String xxll(ModelMap model,HttpServletRequest request,
		HttpServletResponse response) throws Exception{
	String pageNow = request.getParameter("pageNow");
	Page page = null;
	List<Message> MbList = null;
	int totalCount = (int) messageService.getAllMessageCount();
	if (pageNow != null) {
		page = new Page(totalCount, Integer.parseInt(pageNow));
		MbList = messageService.getMessageList(page);
	} else {
		page = new Page(totalCount, 1);
		MbList = messageService.getMessageList(page);
		// users = userMapper.getAllUser();
	}
	model.addAttribute("page", page);
	model.addAttribute("MbList", MbList);
	return "/xxll";
	
}

@RequestMapping(value="/xxll2",method = {RequestMethod.GET,RequestMethod.POST})
public String xxll2(Model model, Integer id,HttpServletRequest request) throws Exception{
	request.setAttribute("MbList", messageService.findMessagebyid(id));  
    model.addAttribute("MbList",  messageService.findMessagebyid(id));   
	model.addAttribute("id",id);
	return "/xxll2";
	
}

@RequestMapping(value="/addmbfont",method = {RequestMethod.GET,RequestMethod.POST})
public String addmbfont(HttpServletRequest request, Model model,String mbt,String mnr) throws Exception {
	
	this.messageService.insertMessage(mbt, mnr);
	
	return "redirect:/mb/xxllfont.action"; 	
}
@RequestMapping(value="/xxllfont",method = {RequestMethod.GET,RequestMethod.POST})
public String xxllfont(ModelMap model,HttpServletRequest request,
		HttpServletResponse response) throws Exception{
	String pageNow = request.getParameter("pageNow");
	Page page = null;
	List<Message> MbList = null;
	int totalCount = (int) messageService.getAllMessageCount();
	if (pageNow != null) {
		page = new Page(totalCount, Integer.parseInt(pageNow));
		MbList = messageService.getMessageList(page);
	} else {
		page = new Page(totalCount, 1);
		MbList = messageService.getMessageList(page);
		// users = userMapper.getAllUser();
	}
	model.addAttribute("page", page);
	model.addAttribute("MbList", MbList);
	return "/FrontPage/Unit_post"; 	
	
}


}