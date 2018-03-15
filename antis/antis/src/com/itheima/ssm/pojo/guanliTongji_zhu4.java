package com.itheima.ssm.pojo;

/**
 * 柱状图
 * 
 * @author zhw
 *
 */
public class guanliTongji_zhu4 {
	private String txm; //帮扶人姓名
	private int tjhbfhs; //帮扶户数
	private int tjhpxcs; //
	private int tjhzfhs; //
	private int tjhfpxm; //
	public guanliTongji_zhu4() {
		// TODO Auto-generated constructor stub
	}
	public String getTxm() {
		return txm;
	}
	public void setTxm(String txm) {
		this.txm = txm;
	}
	public int getTjhbfhs() {
		return tjhbfhs;
	}
	public void setTjhbfhs(int tjhbfhs) {
		this.tjhbfhs = tjhbfhs;
	}
	public int getTjhpxcs() {
		return tjhpxcs;
	}
	public void setTjhpxcs(int tjhpxcs) {
		this.tjhpxcs = tjhpxcs;
	}
	public int getTjhzfhs() {
		return tjhzfhs;
	}
	public void setTjhzfhs(int tjhzfhs) {
		this.tjhzfhs = tjhzfhs;
	}
	public int getTjhfpxm() {
		return tjhfpxm;
	}
	public void setTjhfpxm(int tjhfpxm) {
		this.tjhfpxm = tjhfpxm;
	}
	public guanliTongji_zhu4(String txm, int tjhbfhs, int tjhpxcs, int tjhzfhs, int tjhfpxm) {
		super();
		this.txm = txm;
		this.tjhbfhs = tjhbfhs;
		this.tjhpxcs = tjhpxcs;
		this.tjhzfhs = tjhzfhs;
		this.tjhfpxm = tjhfpxm;
	}
	@Override
	public String toString() {
		return "guanliTongji_zhu4 [txm=" + txm + ", tjhbfhs=" + tjhbfhs + ", tjhpxcs=" + tjhpxcs + ", tjhzfhs="
				+ tjhzfhs + ", tjhfpxm=" + tjhfpxm + "]";
	}
	
}
