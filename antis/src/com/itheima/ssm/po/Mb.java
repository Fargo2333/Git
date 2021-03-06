package com.itheima.ssm.po;

import java.util.List;

public class Mb {
    private Integer mid;

    private String mbt;

    private String mnr;
    public List<Message> list;

    public List<Message> getList() {
		return list;
	}
	public void setList(List<Message> list) {
		this.list = list;
	}
	public Mb(){
    	
    }
    public Mb(Integer mid, String mbt, String mnr) {
		super();
		this.mid = mid;
		this.mbt = mbt;
		this.mnr = mnr;
	}

	public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getMbt() {
        return mbt;
    }

    public void setMbt(String mbt) {
        this.mbt = mbt == null ? null : mbt.trim();
    }

    public String getMnr() {
        return mnr;
    }

    public void setMnr(String mnr) {
        this.mnr = mnr == null ? null : mnr.trim();
    }

	@Override
	public String toString() {
		return "Mb [mid=" + mid + ", mbt=" + mbt + ", mnr=" + mnr + "]";
	}
    
}