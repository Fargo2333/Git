package com.itheima.ssm.po;

import java.util.Date;

public class Message {
    private Integer mid;

    private String muser;

    private String mnr;
    private Date  createdate;
    

    public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public Message(){
    	
    }

	public String getMuser() {
		return muser;
	}

	public void setMuser(String muser) {
		this.muser = muser;
	}

	public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }


    public String getMnr() {
        return mnr;
    }

    public void setMnr(String mnr) {
        this.mnr = mnr == null ? null : mnr.trim();
    }

	@Override
	public String toString() {
		return "Mb [mid=" + mid + ", muser=" + muser + ", mnr=" + mnr + "]";
	}
    
}