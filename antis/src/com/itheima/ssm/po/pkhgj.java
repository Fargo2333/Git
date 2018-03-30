package com.itheima.ssm.po;

public class pkhgj {
	private Integer pid;
	private String pxm;
	private Integer pgold;
	private Integer pngold;
	private String txm;
	private String pzt;
	private String ptpzt;
	 public pkhgj(){};
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	
	public Integer getPgold() {
		return pgold;
	}
	public void setPgold(Integer pgold) {
		this.pgold = pgold;
	}
	public Integer getPngold() {
		return pngold;
	}
	public void setPngold(Integer pngold) {
		this.pngold = pngold;
	}
	public String getTxm() {
		return txm;
	}
	public void setTxm(String txm) {
		this.txm = txm;
	}
	
	public String getPxm() {
		return pxm;
	}
	public void setPxm(String pxm) {
		this.pxm = pxm;
	}
	
	public String getPzt() {
		return pzt;
	}
	public void setPzt(String pzt) {
		this.pzt = pzt;
	}
	@Override
	public String toString() {
		return "pkhgj [pid=" + pid + ", pxm=" + pxm + ", pgold=" + pgold + ", pngold=" + pngold + ", txm=" + txm
				+ ", pzt=" + pzt + ", ptpzt=" + ptpzt + "]";
	}
	public String getPtpzt() {
		return ptpzt;
	}
	public void setPtpzt(String ptpzt) {
		this.ptpzt = ptpzt;
	}
	public pkhgj(Integer pid, String pxm, Integer pgold, Integer pngold, String txm, String pzt, String ptpzt) {
		super();
		this.pid = pid;
		this.pxm = pxm;
		this.pgold = pgold;
		this.pngold = pngold;
		this.txm = txm;
		this.pzt = pzt;
		this.ptpzt = ptpzt;
	}


	
}
