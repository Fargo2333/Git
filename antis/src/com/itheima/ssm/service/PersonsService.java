package com.itheima.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itheima.ssm.mapper.PersonsMapper;
import com.itheima.ssm.po.Page;
import com.itheima.ssm.po.Persons;
import com.itheima.ssm.po.Pkh;

@Service(value="personsService")
public class PersonsService {

	@Autowired
	private PersonsMapper personsMapper;

	public Persons queryPersionbyid(int userid) throws Exception {
		Persons persons = personsMapper.queryPersionbyid(userid);
		return persons;
	}
	public Persons queryPersionbyname(String username) throws Exception{
		Persons persons = personsMapper.queryPersionbyname(username);
		return persons;
	}
	public Persons checkLogin(String username, String userpassword) throws Exception {
        Persons persons = personsMapper.queryPersionbyname(username);
        if (persons != null && persons.getUserpassword().equals(userpassword)) {
            return persons;
        }
        return null;
        
   
	}
	public int addpersons(String username, String userpassword) throws Exception {
		// TODO Auto-generated method stub
		Persons persons = new Persons();
		persons.setUsername(username);
		persons.setUserpassword(userpassword);
		
		int i = personsMapper.addpersons(persons);
		return i;
	}
	
	public int addfrontpersons(String username, String userpassword,String userschedule) throws Exception {
		// TODO Auto-generated method stub
		Persons persons = new Persons();
		persons.setUsername(username);
		persons.setUserpassword(userpassword);
		persons.setUserschedule(userschedule);
		return personsMapper.addfrontpersons(persons);
	}
	public Persons checkLogin2(String username, String userpassword,String userschedule) throws Exception {
        Persons persons = personsMapper.queryPersionbyname(username);
        if (persons != null && persons.getUserpassword().equals(userpassword) && persons.getUserschedule().equals(userschedule)) {
            return persons;
        }
        return null;
        
   
	}
	public long getpersonlistCount() {
		return personsMapper.getpersonlistCount();
	}
	public List<Persons> findpersonlist(Page page) {
		return personsMapper.findpersonlist(page);
	}
	public Persons findpersonsbyId(Integer id) {
		Persons persons = personsMapper.findpersonsbyId(id);
		return persons;
	}
	public void updateperson(Persons persons) {
		personsMapper.updateperson(persons);
	}

	public void deleteperson(Integer id) {
		personsMapper.deleteperson(id);
	}
	public int insertperson(String username, String userpassword, String email, String userschedule) {
		Persons persons=new Persons();
		persons.setUsername(username);
		persons.setUserpassword(userpassword);
		persons.setEmail(email);
		persons.setUserschedule(userschedule);
		return personsMapper.insertperson(persons);
	}
}
