package com.itheima.ssm.pojo;

/**
 * 饼图
 * 
 * @author zhw
 *
 */
public class guanliTongji_bing {
	private float bfb;// 百分比
	private String vname;// 村子

	public float getBfb() {
		return bfb;
	}

	public void setBfb(float bfb) {
		this.bfb = bfb;
	}

	public String getVname() {
		return vname;
	}

	public void setVname(String vname) {
		this.vname = vname;
	}

	@Override
	public String toString() {
		return "guanliTongji_bing [bfb=" + bfb + ", vname=" + vname + "]";
	}

}
