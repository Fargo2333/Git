package com.itheima.ssm.po;

import java.util.List;

public class Pkh {
    private Integer pid;

    private String pxm;

    private String psfz;

    private String plxdh;

    private String pjtzz;

    private String pjtrk;

    private String ppkhsx;

    private String pzyzpyy;

    private String pzyzpxxyy;

    private String pmz;

    private String pzt;

    private Integer tid;

    private String pshzt;

    private String ptime;

    private String pfpcs;

    private String pjtnr;

    private Integer pgold;

    private Integer pngold;

    private Integer pxh;

    private String pzy;

    private String pbj;

    private String pxb;

    private String pnl;
    
    private String txm;
    
    private String zpyynumber;
    private String ptpzt;

public Pkh(){
    	
    }

    public String getZpyynumber() {
	return zpyynumber;
}

public void setZpyynumber(String zpyynumber) {
	this.zpyynumber = zpyynumber;
}

	public Integer getPid() {
        return pid;
    }

    public String getTxm() {
		return txm;
	}

	public void setTxm(String txm) {
		this.txm = txm;
	}

	public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPxm() {
        return pxm;
    }

    public void setPxm(String pxm) {
        this.pxm = pxm == null ? null : pxm.trim();
    }

    public String getPsfz() {
        return psfz;
    }

    public void setPsfz(String psfz) {
        this.psfz = psfz == null ? null : psfz.trim();
    }

    public String getPlxdh() {
        return plxdh;
    }

    public void setPlxdh(String plxdh) {
        this.plxdh = plxdh == null ? null : plxdh.trim();
    }

    public String getPjtzz() {
        return pjtzz;
    }

    public void setPjtzz(String pjtzz) {
        this.pjtzz = pjtzz == null ? null : pjtzz.trim();
    }

    public String getPjtrk() {
        return pjtrk;
    }

    public void setPjtrk(String pjtrk) {
        this.pjtrk = pjtrk == null ? null : pjtrk.trim();
    }

    public String getPpkhsx() {
        return ppkhsx;
    }

    public void setPpkhsx(String ppkhsx) {
        this.ppkhsx = ppkhsx == null ? null : ppkhsx.trim();
    }

    public String getPzyzpyy() {
        return pzyzpyy;
    }

    public void setPzyzpyy(String pzyzpyy) {
        this.pzyzpyy = pzyzpyy == null ? null : pzyzpyy.trim();
    }

    public String getPzyzpxxyy() {
        return pzyzpxxyy;
    }

    public void setPzyzpxxyy(String pzyzpxxyy) {
        this.pzyzpxxyy = pzyzpxxyy == null ? null : pzyzpxxyy.trim();
    }

    public String getPmz() {
        return pmz;
    }

    public void setPmz(String pmz) {
        this.pmz = pmz == null ? null : pmz.trim();
    }

    public String getPzt() {
        return pzt;
    }

    public void setPzt(String pzt) {
        this.pzt = pzt == null ? null : pzt.trim();
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getPshzt() {
        return pshzt;
    }

    public void setPshzt(String pshzt) {
        this.pshzt = pshzt == null ? null : pshzt.trim();
    }

    public String getPtime() {
        return ptime;
    }

    public void setPtime(String ptime) {
        this.ptime = ptime == null ? null : ptime.trim();
    }

    public String getPfpcs() {
        return pfpcs;
    }

    public void setPfpcs(String pfpcs) {
        this.pfpcs = pfpcs == null ? null : pfpcs.trim();
    }

    public String getPjtnr() {
        return pjtnr;
    }

    public void setPjtnr(String pjtnr) {
        this.pjtnr = pjtnr == null ? null : pjtnr.trim();
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

    public Integer getPxh() {
        return pxh;
    }

    public void setPxh(Integer pxh) {
        this.pxh = pxh;
    }

    public String getPzy() {
        return pzy;
    }

    public void setPzy(String pzy) {
        this.pzy = pzy == null ? null : pzy.trim();
    }

    public String getPbj() {
        return pbj;
    }

    public void setPbj(String pbj) {
        this.pbj = pbj == null ? null : pbj.trim();
    }

    public String getPxb() {
        return pxb;
    }

    public void setPxb(String pxb) {
        this.pxb = pxb == null ? null : pxb.trim();
    }

    public String getPnl() {
        return pnl;
    }

    public void setPnl(String pnl) {
        this.pnl = pnl == null ? null : pnl.trim();
    }

	public String getPtpzt() {
		return ptpzt;
	}

	public void setPtpzt(String ptpzt) {
		this.ptpzt = ptpzt;
	}

	public Pkh(Integer pid, String pxm, String psfz, String plxdh, String pjtzz, String pjtrk, String ppkhsx,
			String pzyzpyy, String pzyzpxxyy, String pmz, String pzt, Integer tid, String pshzt, String ptime,
			String pfpcs, String pjtnr, Integer pgold, Integer pngold, Integer pxh, String pzy, String pbj, String pxb,
			String pnl, String txm, String zpyynumber, String ptpzt) {
		super();
		this.pid = pid;
		this.pxm = pxm;
		this.psfz = psfz;
		this.plxdh = plxdh;
		this.pjtzz = pjtzz;
		this.pjtrk = pjtrk;
		this.ppkhsx = ppkhsx;
		this.pzyzpyy = pzyzpyy;
		this.pzyzpxxyy = pzyzpxxyy;
		this.pmz = pmz;
		this.pzt = pzt;
		this.tid = tid;
		this.pshzt = pshzt;
		this.ptime = ptime;
		this.pfpcs = pfpcs;
		this.pjtnr = pjtnr;
		this.pgold = pgold;
		this.pngold = pngold;
		this.pxh = pxh;
		this.pzy = pzy;
		this.pbj = pbj;
		this.pxb = pxb;
		this.pnl = pnl;
		this.txm = txm;
		this.zpyynumber = zpyynumber;
		this.ptpzt = ptpzt;
	}

	@Override
	public String toString() {
		return "Pkh [pid=" + pid + ", pxm=" + pxm + ", psfz=" + psfz + ", plxdh=" + plxdh + ", pjtzz=" + pjtzz
				+ ", pjtrk=" + pjtrk + ", ppkhsx=" + ppkhsx + ", pzyzpyy=" + pzyzpyy + ", pzyzpxxyy=" + pzyzpxxyy
				+ ", pmz=" + pmz + ", pzt=" + pzt + ", tid=" + tid + ", pshzt=" + pshzt + ", ptime=" + ptime
				+ ", pfpcs=" + pfpcs + ", pjtnr=" + pjtnr + ", pgold=" + pgold + ", pngold=" + pngold + ", pxh=" + pxh
				+ ", pzy=" + pzy + ", pbj=" + pbj + ", pxb=" + pxb + ", pnl=" + pnl + ", txm=" + txm + ", zpyynumber="
				+ zpyynumber + ", ptpzt=" + ptpzt + "]";
	}

	
  
}