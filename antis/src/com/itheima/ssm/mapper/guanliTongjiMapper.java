package com.itheima.ssm.mapper;

import java.util.List;

import com.itheima.ssm.pojo.guanliTongji_bing;
import com.itheima.ssm.pojo.guanliTongji_lei;
import com.itheima.ssm.pojo.guanliTongji_zhexian;
import com.itheima.ssm.pojo.guanliTongji_zhexian2;
import com.itheima.ssm.pojo.guanliTongji_zhu;
import com.itheima.ssm.pojo.guanliTongji_zhu2;
import com.itheima.ssm.pojo.guanliTongji_zhu3;
import com.itheima.ssm.pojo.guanliTongji_zhu4;
import com.itheima.ssm.pojo.pkhbing;

public interface guanliTongjiMapper {

	public List<guanliTongji_zhu> query_zhu() throws Exception;

	public List<guanliTongji_lei> query_leida() throws Exception;

	public List<guanliTongji_bing> query_bing() throws Exception;

	public List<guanliTongji_zhexian> query_zhexian() throws Exception;

	public List<guanliTongji_zhexian2> query_zhexian2() throws Exception;
	
	public List<guanliTongji_zhu2> query_zhu2() throws Exception;
	public List<guanliTongji_zhu3> query_zhu3() throws Exception;

	public List<pkhbing> query_pkhbing();

	public List<guanliTongji_zhu4> query_zhu4() throws Exception;

}
