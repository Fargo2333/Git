package com.itheima.ssm.pojo;

/**
 * 柱状图
 * 
 * @author zhw
 *
 */
public class guanliTongji_zhu2 {
	private String txm; //帮扶人姓名
	private int tsjbfhs; //帮扶户数
	private int tsjpxcs; //
	private int tsjzfhs; //
	private int tsjfpxm; //
	public String getTxm() {
		return txm;
	}
	public void setTxm(String txm) {
		this.txm = txm;
	}
	public int getTsjpxcs() {
		return tsjpxcs;
	}
	public void setTsjpxcs(int tsjpxcs) {
		this.tsjpxcs = tsjpxcs;
	}
	public int getTsjzfhs() {
		return tsjzfhs;
	}
	public void setTsjzfhs(int tsjzfhs) {
		this.tsjzfhs = tsjzfhs;
	}

	public int getTsjfpxm() {
		return tsjfpxm;
	}
	public void setTsjfpxm(int tsjfpxm) {
		this.tsjfpxm = tsjfpxm;
	}
	public int getTsjbfhs() {
		return tsjbfhs;
	}
	public void setTsjbfhs(int tsjbfhs) {
		this.tsjbfhs = tsjbfhs;
	}
	@Override
	public String toString() {
		return "guanliTongji_zhu2 [txm=" + txm + ", tsjbfhs=" + tsjbfhs + ", tsjpxcs=" + tsjpxcs + ", tsjzfhs="
				+ tsjzfhs + ", tsjfpxm=" + tsjfpxm + "]";
	}
	
}
