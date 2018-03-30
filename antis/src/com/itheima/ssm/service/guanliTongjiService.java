package com.itheima.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itheima.ssm.mapper.guanliTongjiMapper;
import com.itheima.ssm.pojo.guanliTongji_bing;
import com.itheima.ssm.pojo.guanliTongji_lei;
import com.itheima.ssm.pojo.guanliTongji_zhexian;
import com.itheima.ssm.pojo.guanliTongji_zhexian2;
import com.itheima.ssm.pojo.guanliTongji_zhu;
import com.itheima.ssm.pojo.guanliTongji_zhu2;
import com.itheima.ssm.pojo.guanliTongji_zhu3;
import com.itheima.ssm.pojo.guanliTongji_zhu4;
import com.itheima.ssm.pojo.pkhbing;

@Service(value = "guanliTongjiService")
public class guanliTongjiService {
	@Autowired
	private guanliTongjiMapper guanliTongjimapper;
	public List<guanliTongji_zhu2> query_zhu2() throws Exception {
		List<guanliTongji_zhu2> zhu2 = guanliTongjimapper.query_zhu2();
		return zhu2;
	};
	public List<guanliTongji_zhu3> query_zhu3() throws Exception {
		List<guanliTongji_zhu3> zhu3 = guanliTongjimapper.query_zhu3();
		return zhu3;
	}
	public List<pkhbing> query_pkhbing() {
		List<pkhbing> pkhbing = guanliTongjimapper.query_pkhbing();
		return pkhbing;
	}
	public List<guanliTongji_zhu4> query_zhu4() throws Exception {
		List<guanliTongji_zhu4> zhu4 = guanliTongjimapper.query_zhu4();
		return zhu4;
	}
}
