package com.itheima.ssm.po;

public class Fpxm {
    private Integer xid;

    private String xxmmc;

    private String xlb;

    private String xjsnrjgm;

    private String xzrdw;

    private Integer xtzze;

    private String xzt;

    private String xvillagename;

    private String pszz;

    private Integer vid;

    private String image;
    
    public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getXid() {
        return xid;
    }

    public void setXid(Integer xid) {
        this.xid = xid;
    }

    public String getXxmmc() {
        return xxmmc;
    }

    public void setXxmmc(String xxmmc) {
        this.xxmmc = xxmmc == null ? null : xxmmc.trim();
    }

    public String getXlb() {
        return xlb;
    }

    public void setXlb(String xlb) {
        this.xlb = xlb == null ? null : xlb.trim();
    }

    public String getXjsnrjgm() {
        return xjsnrjgm;
    }

    public void setXjsnrjgm(String xjsnrjgm) {
        this.xjsnrjgm = xjsnrjgm == null ? null : xjsnrjgm.trim();
    }

    public String getXzrdw() {
        return xzrdw;
    }

    public void setXzrdw(String xzrdw) {
        this.xzrdw = xzrdw == null ? null : xzrdw.trim();
    }

    public Integer getXtzze() {
        return xtzze;
    }

    public void setXtzze(Integer xtzze) {
        this.xtzze = xtzze;
    }

    public String getXzt() {
        return xzt;
    }

    public void setXzt(String xzt) {
        this.xzt = xzt == null ? null : xzt.trim();
    }

    public String getXvillagename() {
        return xvillagename;
    }

    public void setXvillagename(String xvillagename) {
        this.xvillagename = xvillagename == null ? null : xvillagename.trim();
    }

    public String getPszz() {
        return pszz;
    }

    public void setPszz(String pszz) {
        this.pszz = pszz == null ? null : pszz.trim();
    }

    public Integer getVid() {
        return vid;
    }

    public void setVid(Integer vid) {
        this.vid = vid;
    }

	@Override
	public String toString() {
		return "Fpxm [xid=" + xid + ", xxmmc=" + xxmmc + ", xlb=" + xlb + ", xjsnrjgm=" + xjsnrjgm + ", xzrdw=" + xzrdw
				+ ", xtzze=" + xtzze + ", xzt=" + xzt + ", xvillagename=" + xvillagename + ", pszz=" + pszz + ", vid="
				+ vid + "]";
	}

	public Fpxm(Integer xid, String xxmmc, String xlb, String xjsnrjgm, String xzrdw, Integer xtzze, String xzt,
			String xvillagename, String pszz, Integer vid) {
		super();
		this.xid = xid;
		this.xxmmc = xxmmc;
		this.xlb = xlb;
		this.xjsnrjgm = xjsnrjgm;
		this.xzrdw = xzrdw;
		this.xtzze = xtzze;
		this.xzt = xzt;
		this.xvillagename = xvillagename;
		this.pszz = pszz;
		this.vid = vid;
	}

	public Fpxm() {
		// TODO Auto-generated constructor stub
	}
    
}