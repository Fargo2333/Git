package com.itheima.ssm.po;

public class jdgl {

	private Bftj Bfgl;
	private Pkh Pkh;
	public Bftj getBfgl() {
		return Bfgl;
	}
	public void setBfgl(Bftj bfgl) {
		Bfgl = bfgl;
	}
	public Pkh getPkh() {
		return Pkh;
	}
	public void setPkh(Pkh pkh) {
		Pkh = pkh;
	}
	@Override
	public String toString() {
		return "jdgl [Bfgl=" + Bfgl + ", Pkh=" + Pkh + "]";
	}
	public jdgl(Bftj bfgl, com.itheima.ssm.po.Pkh pkh) {
		super();
		Bfgl = bfgl;
		Pkh = pkh;
	}
	
}
