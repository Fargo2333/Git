package com.itheima.ssm.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.itheima.ssm.po.Pkh;
import com.itheima.ssm.po.tubiao;
import com.itheima.ssm.service.PkhService;
 

@Controller
public class PkhController {
	@Autowired
	private PkhService PkhService;
	
	@RequestMapping(value = "/getzpyybing.action")
	public @ResponseBody tubiao getzpyybing() throws Exception {
		List<Pkh> query_zpyynumber = PkhService.query_zpyynumber();
		tubiao tubiao=new tubiao();
		tubiao.setPkh(query_zpyynumber);
        System.out.println(tubiao);
		return tubiao;
	}
}