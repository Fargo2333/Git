package com.itheima.ssm.po;

import java.util.List;


public class tubiao {
	private List<Pkh> Pkh;

	public List<Pkh> getPkh() {
		return Pkh;
	}

	public void setPkh(List<Pkh> pkh) {
		Pkh = pkh;
	}

	public tubiao(List<com.itheima.ssm.po.Pkh> pkh) {
		super();
		Pkh = pkh;
	}

	public tubiao() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "tubiao [Pkh=" + Pkh + "]";
	}
	
}
