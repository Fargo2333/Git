package com.itheima.ssm.po;

public class Persons {
    private Integer userid;

    private String username;

    private String userpassword;

    private String email;

    private String userschedule;

    public Persons(){
    	
    }
    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword == null ? null : userpassword.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getUserschedule() {
        return userschedule;
    }

    public void setUserschedule(String userschedule) {
        this.userschedule = userschedule == null ? null : userschedule.trim();
    }
	public Persons(Integer userid, String username, String userpassword, String email, String userschedule) {
		super();
		this.userid = userid;
		this.username = username;
		this.userpassword = userpassword;
		this.email = email;
		this.userschedule = userschedule;
	}
	@Override
	public String toString() {
		return "Persons [userid=" + userid + ", username=" + username + ", userpassword=" + userpassword + ", email="
				+ email + ", userschedule=" + userschedule + "]";
	}
    
}