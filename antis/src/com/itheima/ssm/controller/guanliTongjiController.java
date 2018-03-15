package com.itheima.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itheima.ssm.pojo.guanliTongji;
import com.itheima.ssm.pojo.guanliTongji_bing;
import com.itheima.ssm.pojo.guanliTongji_lei;
import com.itheima.ssm.pojo.guanliTongji_zhexian;
import com.itheima.ssm.pojo.guanliTongji_zhexian2;
import com.itheima.ssm.pojo.guanliTongji_zhu;
import com.itheima.ssm.pojo.guanliTongji_zhu2;
import com.itheima.ssm.pojo.guanliTongji_zhu3;
import com.itheima.ssm.pojo.guanliTongji_zhu4;
import com.itheima.ssm.pojo.pkhbing;
import com.itheima.ssm.service.guanliTongjiService;

@Controller
public class guanliTongjiController {
/*
	@Autowired
	private guanliTongjiService guanliTongjiservice;

	@RequestMapping(value = "/getData_guanliTongji.action")
	public @ResponseBody guanliTongji getData_guanliTongji() throws Exception {
		
		List<guanliTongji_zhu> query_zhu = guanliTongjiservice.query_zhu();
		List<guanliTongji_zhu2> query_zhu2 = guanliTongjiservice.query_zhu2();
		List<guanliTongji_bing> query_bing = guanliTongjiservice.query_bing();
		List<guanliTongji_lei> query_leida = guanliTongjiservice.query_leida();
		List<guanliTongji_zhexian> query_zhexian = guanliTongjiservice.query_zhexian();
		List<guanliTongji_zhexian2> query_zhexian2 = guanliTongjiservice.query_zhexian2();
		List<guanliTongji_zhu3> query_zhu3 = guanliTongjiservice.query_zhu3();
		
		guanliTongji guanli= new guanliTongji();
		
		guanli.setGuanliTongji_zhu(query_zhu);
		guanli.setGuanliTongji_zhu2(query_zhu2);
		guanli.setGuanliTongji_bing(query_bing);
		guanli.setGuanliTongji_lei(query_leida);
		guanli.setGuanliTongji_zhexian(query_zhexian);
		guanli.setGuanliTongji_zhexian2(query_zhexian2);
		guanli.setGuanliTongji_bing(query_bing);
		guanli.setGuanliTongji_zhu3(query_zhu3);
		
		return guanli;
	}*/
	@Autowired
	private guanliTongjiService guanliTongjiservice;

	@RequestMapping(value = "/getData_guanliTongji.action")
	public @ResponseBody guanliTongji getData_guanliTongji() throws Exception {
		List<guanliTongji_zhu2> query_zhu2 = guanliTongjiservice.query_zhu2();
		List<guanliTongji_zhu3> query_zhu3 = guanliTongjiservice.query_zhu3();
		List<guanliTongji_zhu4> query_zhu4 = guanliTongjiservice.query_zhu4();
		List<pkhbing> query_pkhbing = guanliTongjiservice.query_pkhbing();
		guanliTongji guanli= new guanliTongji();	
		guanli.setGuanliTongji_zhu2(query_zhu2);
		guanli.setGuanliTongji_zhu3(query_zhu3);
		guanli.setGuanliTongji_zhu4(query_zhu4);
		guanli.setPkhbing(query_pkhbing);
		System.out.println(guanli);
		return guanli;
	}
}
