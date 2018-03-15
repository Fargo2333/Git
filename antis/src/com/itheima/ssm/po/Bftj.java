package com.itheima.ssm.po;

public class Bftj {
    private Integer tid;

    private String txm;

    private String tzw;

    private String tlxdh;

    private String tshzt;
    private Integer tjhzfhs;
    private Integer tjhpxcs;
    private Integer tjhfpxm;
    private Integer tjhbfhs;
    private Integer tsjzfhs;
    private Integer tsjpxcs;
    private Integer tsjfpxm;
    private Integer tsjbfhs;
    private Integer bfhsbfb;
    private Integer zfhsbfb;
    private Integer pxcsbfb;
    private Integer fpxmbfb;

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTxm() {
        return txm;
    }

    public void setTxm(String txm) {
        this.txm = txm == null ? null : txm.trim();
    }

    public String getTzw() {
        return tzw;
    }

    public void setTzw(String tzw) {
        this.tzw = tzw == null ? null : tzw.trim();
    }

    public String getTlxdh() {
        return tlxdh;
    }
    
    public void setTlxdh(String tlxdh) {
        this.tlxdh = tlxdh == null ? null : tlxdh.trim();
    }

    public String getTshzt() {
        return tshzt;
    }

    public void setTshzt(String tshzt) {
        this.tshzt = tshzt == null ? null : tshzt.trim();
    }

	public Integer getTjhzfhs() {
		return tjhzfhs;
	}

	public void setTjhzfhs(Integer tjhzfhs) {
		this.tjhzfhs = tjhzfhs;
	}

	public Integer getTjhpxcs() {
		return tjhpxcs;
	}

	public void setTjhpxcs(Integer tjhpxcs) {
		this.tjhpxcs = tjhpxcs;
	}

	public Integer getTjhfpxm() {
		return tjhfpxm;
	}

	public void setTjhfpxm(Integer tjhfpxm) {
		this.tjhfpxm = tjhfpxm;
	}

	

	public Integer getTjhbfhs() {
		return tjhbfhs;
	}

	public void setTjhbfhs(Integer tjhbfhs) {
		this.tjhbfhs = tjhbfhs;
	}

	public Integer getTsjbfhs() {
		return tsjbfhs;
	}

	public void setTsjbfhs(Integer tsjbfhs) {
		this.tsjbfhs = tsjbfhs;
	}

	public Integer getTsjzfhs() {
		return tsjzfhs;
	}

	public void setTsjzfhs(Integer tsjzfhs) {
		this.tsjzfhs = tsjzfhs;
	}

	public Integer getTsjpxcs() {
		return tsjpxcs;
	}

	public void setTsjpxcs(Integer tsjpxcs) {
		this.tsjpxcs = tsjpxcs;
	}

	public Integer getTsjfpxm() {
		return tsjfpxm;
	}

	public void setTsjfpxm(Integer tsjfpxm) {
		this.tsjfpxm = tsjfpxm;
	}

	public Integer getBfhsbfb() {
		return bfhsbfb;
	}

	public void setBfhsbfb(Integer bfhsbfb) {
		this.bfhsbfb = bfhsbfb;
	}

	public Integer getZfhsbfb() {
		return zfhsbfb;
	}

	public void setZfhsbfb(Integer zfhsbfb) {
		this.zfhsbfb = zfhsbfb;
	}

	public Integer getPxcsbfb() {
		return pxcsbfb;
	}

	public void setPxcsbfb(Integer pxcsbfb) {
		this.pxcsbfb = pxcsbfb;
	}

	public Integer getFpxmbfb() {
		return fpxmbfb;
	}

	public void setFpxmbfb(Integer fpxmbfb) {
		this.fpxmbfb = fpxmbfb;
	}

	public Bftj(Integer tid, String txm, String tzw, String tlxdh, String tshzt, Integer tjhzfhs, Integer tjhpxcs,
			Integer tjhfpxm, Integer tjhbfhs, Integer tsjzfhs, Integer tsjpxcs, Integer tsjfpxm, Integer tsjbfhs,
			Integer bfhsbfb, Integer zfhsbfb, Integer pxcsbfb, Integer fpxmbfb) {
		super();
		this.tid = tid;
		this.txm = txm;
		this.tzw = tzw;
		this.tlxdh = tlxdh;
		this.tshzt = tshzt;
		this.tjhzfhs = tjhzfhs;
		this.tjhpxcs = tjhpxcs;
		this.tjhfpxm = tjhfpxm;
		this.tjhbfhs = tjhbfhs;
		this.tsjzfhs = tsjzfhs;
		this.tsjpxcs = tsjpxcs;
		this.tsjfpxm = tsjfpxm;
		this.tsjbfhs = tsjbfhs;
		this.bfhsbfb = bfhsbfb;
		this.zfhsbfb = zfhsbfb;
		this.pxcsbfb = pxcsbfb;
		this.fpxmbfb = fpxmbfb;
	}

	public Bftj() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Bftj [tid=" + tid + ", txm=" + txm + ", tzw=" + tzw + ", tlxdh=" + tlxdh + ", tshzt=" + tshzt
				+ ", tjhzfhs=" + tjhzfhs + ", tjhpxcs=" + tjhpxcs + ", tjhfpxm=" + tjhfpxm + ", tjhbfhs=" + tjhbfhs
				+ ", tsjzfhs=" + tsjzfhs + ", tsjpxcs=" + tsjpxcs + ", tsjfpxm=" + tsjfpxm + ", tsjbfhs=" + tsjbfhs
				+ ", bfhsbfb=" + bfhsbfb + ", zfhsbfb=" + zfhsbfb + ", pxcsbfb=" + pxcsbfb + ", fpxmbfb=" + fpxmbfb
				+ "]";
	}

}