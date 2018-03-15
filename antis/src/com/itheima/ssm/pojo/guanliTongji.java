package com.itheima.ssm.pojo;

import java.util.List;

/**
 * 管理 数据实体
 * 
 * @author zhw
 *
 */
public class guanliTongji {
	private List<guanliTongji_zhu> guanliTongji_zhu;

	private List<guanliTongji_bing> guanliTongji_bing;

	private List<guanliTongji_lei> guanliTongji_lei;

	private List<guanliTongji_zhexian> guanliTongji_zhexian;

	private List<guanliTongji_zhexian2> guanliTongji_zhexian2;
	
	private List<guanliTongji_zhu2> guanliTongji_zhu2;
	private List<guanliTongji_zhu3> guanliTongji_zhu3;
	private List<guanliTongji_zhu4> guanliTongji_zhu4;
	private List<pkhbing> pkhbing;

	

	public List<pkhbing> getPkhbing() {
		return pkhbing;
	}

	public void setPkhbing(List<pkhbing> pkhbing) {
		this.pkhbing = pkhbing;
	}

	public List<guanliTongji_zhu3> getGuanliTongji_zhu3() {
		return guanliTongji_zhu3;
	}

	public void setGuanliTongji_zhu3(List<guanliTongji_zhu3> guanliTongji_zhu3) {
		this.guanliTongji_zhu3 = guanliTongji_zhu3;
	}

	public List<guanliTongji_zhu> getGuanliTongji_zhu() {
		return guanliTongji_zhu;
	}

	public void setGuanliTongji_zhu(List<guanliTongji_zhu> guanliTongji_zhu) {
		this.guanliTongji_zhu = guanliTongji_zhu;
	}

	public List<guanliTongji_bing> getGuanliTongji_bing() {
		return guanliTongji_bing;
	}

	public void setGuanliTongji_bing(List<guanliTongji_bing> guanliTongji_bing) {
		this.guanliTongji_bing = guanliTongji_bing;
	}

	public List<guanliTongji_lei> getGuanliTongji_lei() {
		return guanliTongji_lei;
	}

	public void setGuanliTongji_lei(List<guanliTongji_lei> guanliTongji_lei) {
		this.guanliTongji_lei = guanliTongji_lei;
	}

	public List<guanliTongji_zhexian> getGuanliTongji_zhexian() {
		return guanliTongji_zhexian;
	}

	public void setGuanliTongji_zhexian(List<guanliTongji_zhexian> guanliTongji_zhexian) {
		this.guanliTongji_zhexian = guanliTongji_zhexian;
	}

	public List<guanliTongji_zhexian2> getGuanliTongji_zhexian2() {
		return guanliTongji_zhexian2;
	}

	public void setGuanliTongji_zhexian2(List<guanliTongji_zhexian2> guanliTongji_zhexian2) {
		this.guanliTongji_zhexian2 = guanliTongji_zhexian2;
	}
	
	

	public List<guanliTongji_zhu2> getGuanliTongji_zhu2() {
		return guanliTongji_zhu2;
	}

	public void setGuanliTongji_zhu2(List<guanliTongji_zhu2> guanliTongji_zhu2) {
		this.guanliTongji_zhu2 = guanliTongji_zhu2;
	}

	public List<guanliTongji_zhu4> getGuanliTongji_zhu4() {
		return guanliTongji_zhu4;
	}

	public void setGuanliTongji_zhu4(List<guanliTongji_zhu4> guanliTongji_zhu4) {
		this.guanliTongji_zhu4 = guanliTongji_zhu4;
	}

	@Override
	public String toString() {
		return "guanliTongji [guanliTongji_zhu=" + guanliTongji_zhu + ", guanliTongji_bing=" + guanliTongji_bing
				+ ", guanliTongji_lei=" + guanliTongji_lei + ", guanliTongji_zhexian=" + guanliTongji_zhexian
				+ ", guanliTongji_zhexian2=" + guanliTongji_zhexian2 + ", guanliTongji_zhu2=" + guanliTongji_zhu2
				+ ", guanliTongji_zhu3=" + guanliTongji_zhu3 + ", guanliTongji_zhu4=" + guanliTongji_zhu4 + ", pkhbing="
				+ pkhbing + "]";
	}


	
	
	
}
