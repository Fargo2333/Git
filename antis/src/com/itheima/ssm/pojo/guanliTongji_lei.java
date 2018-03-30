package com.itheima.ssm.pojo;

/**
 * 雷达图
 * 
 * @author zhw
 *
 */
public class guanliTongji_lei {
	private String pzyzpyy; // 致贫原因
	private int pnumber;// 致贫人数

	public String getPzyzpyy() {
		return pzyzpyy;
	}

	public void setPzyzpyy(String pzyzpyy) {
		this.pzyzpyy = pzyzpyy;
	}

	public int getPnumber() {
		return pnumber;
	}

	public void setPnumber(int pnumber) {
		this.pnumber = pnumber;
	}

	@Override
	public String toString() {
		return "guanliTongji_lei [pzyzpyy=" + pzyzpyy + ", pnumber=" + pnumber + "]";
	}

}
