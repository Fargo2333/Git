package com.itheima.ssm.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itheima.ssm.po.Bftj;
import com.itheima.ssm.po.Page;
import com.itheima.ssm.po.Persons;
import com.itheima.ssm.service.PersonsService;

@Controller
@RequestMapping("/persons")
public class PersonsController {

	@Autowired
	private PersonsService personsService;

	@RequestMapping("/queryPersion")
	public ModelAndView queryPersion() throws Exception {
		ModelAndView mv = new ModelAndView();

		Persons persons = personsService.queryPersionbyid(1);
		System.out.println("persons===" + persons);

		mv.addObject("persons", persons);
		mv.setViewName("/index");
		
		return mv;
	}

	 @RequestMapping(value="/login",method={RequestMethod.POST,RequestMethod.GET})
	    public String login(Persons persons,Model model,HttpServletRequest request) throws Exception {
		 int zaixianrenshu = 0;
		 persons=personsService.checkLogin2(persons.getUsername(), persons.getUserpassword(),persons.getUserschedule());
	        if(persons!=null){
	            model.addAttribute(persons);
	            HttpSession session = request.getSession();
	            session.setAttribute("zaixianrenshu",zaixianrenshu+1);
	            session.setAttribute("faillogin","");
				session.setAttribute("username", persons.getUsername());
				session.setAttribute("userschedule", persons.getUserschedule());
	           /* return "redirect:/FrontPage/index.jsp";*/
				return "/zuozhan_map";   
	        }   
	        HttpSession session = request.getSession();
	        session.setAttribute("faillogin","账号或密码错误！");
	        System.out.println("登陆GG");
	        return "redirect:/login.jsp";
	    }
	 
	// 注册
		@RequestMapping(value = "/register.action")
		public String regiest(Persons persons,HttpServletRequest request,Model model, @RequestParam(value = "username") String username,
				@RequestParam(value = "userpassword") String userpassword,@RequestParam(value = "userschedule") String userschedule) throws Exception {

			this.personsService.addfrontpersons(username, userpassword, userschedule);			
			return "/login";

		}
	 
		// 注销
		@RequestMapping(value = "/user_cancellation.action")
		public String helper_cancellation(HttpSession session) throws Exception {
			session.removeAttribute("username");
			session.invalidate();
			return "/login";
		}
		// 前台登陆
		 @RequestMapping(value="/frontlogin",method={RequestMethod.POST,RequestMethod.GET})
		    public String fontlogin(Persons persons,Model model,HttpServletRequest request) throws Exception {
		        persons=personsService.checkLogin2(persons.getUsername(), persons.getUserpassword(),persons.getUserschedule());
		        if(persons!=null){
		            model.addAttribute(persons);
		            HttpSession session = request.getSession();
		            session.setAttribute("faillogin","");
					session.setAttribute("username", persons.getUsername());
					session.setAttribute("userschedule", persons.getUserschedule());
		           /* return "redirect:/FrontPage/index.jsp";*/
					return "/FrontPage/index";
		            
		        }   
		        HttpSession session = request.getSession();
		        session.setAttribute("faillogin","账号或密码错误！");
		        System.out.println("登陆GG");
		        return "redirect:/FrontPage/login.jsp";
		    }
		 
		// 前台注册
			@RequestMapping(value = "/frontregister.action")
			public String frontregiest(Persons persons,HttpServletRequest request,Model model, @RequestParam(value = "username") String username,
					@RequestParam(value = "userpassword") String userpassword,@RequestParam(value = "userschedule") String userschedule) throws Exception {
				/*System.out.println(userschedule);*/
				this.personsService.addfrontpersons(username, userpassword, userschedule);			
				return "/FrontPage/login";
				/*return "/FrontPage/register";*/

			}
			
			@RequestMapping(value = "/tzregister.action")
			public String tzregister(){
				return "redirect:/FrontPage/register.jsp";
			}
			
			// 前台注销
		@RequestMapping(value = "/user_cancellation2.action")
		public String helper_cancellation2(HttpSession session) throws Exception {
			session.removeAttribute("username");
			session.invalidate();
			return "/FrontPage/login";
		}
		@RequestMapping(value = "/personlist.action")
		public String personlist(ModelMap model, HttpServletRequest request,
				HttpServletResponse response) throws Exception {
			String pageNow = request.getParameter("pageNow");
			Page page = null;
			List<Persons> PersonList = null;
			int totalCount = (int) personsService.getpersonlistCount();
			if (pageNow != null) {
				page = new Page(totalCount, Integer.parseInt(pageNow));
				PersonList = personsService.findpersonlist(page);
			} else {
				page = new Page(totalCount, 1);
				PersonList = personsService.findpersonlist(page);
			}
			model.addAttribute("page", page);
			model.addAttribute("PersonList", PersonList);
			return "/xtgl";

		}
		@RequestMapping(value = "/editperson.action",method = {RequestMethod.GET,RequestMethod.POST})
		public String editperson(Model model, Integer id,HttpServletRequest request) throws Exception{
			 request.setAttribute("PersonList", personsService.findpersonsbyId(id));
		     model.addAttribute("PersonList", personsService.findpersonsbyId(id));   
		     model.addAttribute("id",id);
			return "/editperson";		
		}
		@RequestMapping(value = "/updateperson.action",method = {RequestMethod.GET,RequestMethod.POST})
		public String updateperson(Integer id,HttpServletRequest request,Model model,Persons persons){
			persons.setUserid(id);
			this.personsService.updateperson(persons);
			return "redirect:/persons/personlist.action";
		}
		@RequestMapping(value = "/deleteperson.action",method = {RequestMethod.GET,RequestMethod.POST})
		public String deleteperson(Integer id,HttpServletRequest request,Model model,Persons persons){
			persons.setUserid(id);
			this.personsService.deleteperson(id);
			return "redirect:/persons/personlist.action";
		}
		@RequestMapping(value = "/addperson.action",method = {RequestMethod.GET,RequestMethod.POST})
		public String addperson(HttpServletRequest request, Model model, @RequestParam(value = "username") String username,
				@RequestParam(value = "userpassword") String userpassword,@RequestParam(value = "email") String email,
				@RequestParam(value = "userschedule") String userschedule){
			this.personsService.insertperson(username,userpassword,email,userschedule);
			return "redirect:/persons/personlist.action";
		}
		@RequestMapping(value = "/backup.action",method = {RequestMethod.GET,RequestMethod.POST})
		public String backup(String path,HttpServletRequest request)throws IOException{
			        String pghomeString = "E:\\daer\\mysql\\mysql\\PHPnow-1.5.6\\MySQL-5.0.90\\bin\\";  
			        String dataBaseUser = "root";  
			        String dataBasePass = "root";  
			        String dataBaseName = "poverty-student";  
			        String backupSql = "C:\\Users\\Administrator\\Desktop\\backup.sql";  
			 StringBuilder command = new StringBuilder();  
		        command.append(pghomeString).append("mysqldump.exe").append(" --default-character-set=utf8").append(" -u")  
		                .append(dataBaseUser).append(" -p").append(dataBasePass).append(" ").append(dataBaseName)  
		                .append(" -B -r ").append(backupSql);  
		        System.out.println(command.toString());  
		        Process p = null;  
		        try {  
		            Runtime runtime = Runtime.getRuntime();  
		            p = runtime.exec(command.toString());  
		            int processComplete = p.waitFor();  
		            if (processComplete == 0) {  
		                System.out.println("数据备份成功!");  
		                HttpSession session = request.getSession();
				        session.setAttribute("xtgl","数据备份成功");
		            } else {  
		                System.out.println("数据备份失败");  
		                HttpSession session = request.getSession();
				        session.setAttribute("xtgl","数据备份失败");
		            }  
		        }catch (IOException exception){  
		            System.out.println("IOException");  
		        }catch (InterruptedException exception){  
		            System.out.println("InterruptedException");  
		        }  
		        return "redirect:/persons/personlist.action";
		    } 
	
		@RequestMapping(value = "/restore.action",method = {RequestMethod.GET,RequestMethod.POST})
		public String restore(String path,HttpServletRequest request)throws IOException{
			String pghome="E:";
			String pghomeString = "E:\\daer\\mysql\\mysql\\PHPnow-1.5.6\\MySQL-5.0.90\\bin\\";  
	        String dataBaseUser = "root";  
	        String dataBasePass = "root";  
	        String dataBaseName = "poverty-student";  
	        String backupSql = "C:\\Users\\Administrator\\Desktop\\backup.sql";  
			StringBuilder command = new StringBuilder();  
	        command.append(pghome).append("\n")  
	                .append("cd ").append(pghomeString).append("\n")  
	                .append("mysql.exe").append(" -u").append(dataBaseUser).append(" -p").append(dataBasePass).append(" ")  
	                .append(dataBaseName).append(" < ").append(backupSql).append("\n")  
	                .append("exit");  
	        System.out.println(command.toString());  
	        File f = new File("restore.bat");  
	        FileOutputStream fos = new FileOutputStream(f);  
	        fos.write(command.toString().getBytes());  
	        fos.close();  
	        Process p = null;  
	        try {  
	            Runtime runtime = Runtime.getRuntime();  
	            p = runtime.exec("cmd /C start restore.bat");  
	            int processComplete = p.waitFor();  
	            if (processComplete == 0) {  
	                System.out.println("数据恢复成功！");  
	                HttpSession session = request.getSession();
			        session.setAttribute("xtgl","数据恢复成功");
	            } else {  
	                System.out.println("数据恢复失败！");  
	                HttpSession session = request.getSession();
			        session.setAttribute("xtgl","数据恢复失败");
	            }  
	        }catch (IOException exception){  
	            System.out.println("IOException");  
	        }catch (InterruptedException exception){  
	            System.out.println("InterruptedException");  
	        }  
			return "redirect:/persons/personlist.action";	
		}
		@RequestMapping(value = "/initxtgl.action",method = {RequestMethod.GET,RequestMethod.POST})
		public void initxtgl(HttpServletRequest request){
			 HttpSession session = request.getSession();
		        session.setAttribute("xtgl","");
		        System.out.println("清除session成功！");
		}
}