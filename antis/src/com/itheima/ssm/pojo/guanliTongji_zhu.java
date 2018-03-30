package com.itheima.ssm.pojo;

/**
 * 柱状图
 * 
 * @author zhw
 *
 */
public class guanliTongji_zhu {
	private String vname; //村子
	private int vpkhrk; //贫困户人口

	public String getVname() {
		return vname;
	}

	public void setVname(String vname) {
		this.vname = vname;
	}

	public int getVpkhrk() {
		return vpkhrk;
	}

	public void setVpkhrk(int vpkhrk) {
		this.vpkhrk = vpkhrk;
	}

	@Override
	public String toString() {
		return "guanliTongji_zhu [vname=" + vname + ", vpkhrk=" + vpkhrk + "]";
	}

}
