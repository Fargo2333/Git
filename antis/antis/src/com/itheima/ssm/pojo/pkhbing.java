package com.itheima.ssm.pojo;

public class pkhbing {
	 private int zpyynumber;
	 private String pzyzpyy;

	public String getPzyzpyy() {
		return pzyzpyy;
	}
	public void setPzyzpyy(String pzyzpyy) {
		this.pzyzpyy = pzyzpyy;
	}
	public int getZpyynumber() {
		return zpyynumber;
	}
	public void setZpyynumber(int zpyynumber) {
		this.zpyynumber = zpyynumber;
	}
	@Override
	public String toString() {
		return "pkhbing [zpyynumber=" + zpyynumber + ", pzyzpyy=" + pzyzpyy + "]";
	}

}
