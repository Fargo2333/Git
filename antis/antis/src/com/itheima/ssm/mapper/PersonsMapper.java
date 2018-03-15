package com.itheima.ssm.mapper;

import java.util.List;

import com.itheima.ssm.po.Page;
import com.itheima.ssm.po.Persons;

public interface PersonsMapper {
	public Persons queryPersionbyid(int userid) throws Exception;
	public Persons queryPersionbyname(String username) throws Exception;
	public Persons checkLogin(String username, String userpassword);
	public int addpersons(Persons persons) throws Exception;
	public int addfrontpersons(Persons persons) throws Exception;
	public long getpersonlistCount();
	public List<Persons> findpersonlist(Page page);
	public Persons findpersonsbyId(Integer id);
	public void updateperson(Persons persons);
	public void deleteperson(Integer id);
	public int insertperson(Persons persons);
}