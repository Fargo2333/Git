package com.itheima.ssm.pojo;

/**
 * 柱状图
 * 
 * @author zhw
 *
 */
public class guanliTongji_zhu3 {
	private String pxm; //贫困户姓名
	private int pgold; //脱贫户数
	private int pngold; //
	public String getPxm() {
		return pxm;
	}
	public void setPxm(String pxm) {
		this.pxm = pxm;
	}
	public int getPgold() {
		return pgold;
	}
	public void setPgold(int pgold) {
		this.pgold = pgold;
	}
	public int getPngold() {
		return pngold;
	}
	public void setPngold(int pngold) {
		this.pngold = pngold;
	}
	@Override
	public String toString() {
		return "guanliTongji_zhu3 [pxm=" + pxm + ", pgold=" + pgold + ", pngold=" + pngold + "]";
	}
	

	
}
