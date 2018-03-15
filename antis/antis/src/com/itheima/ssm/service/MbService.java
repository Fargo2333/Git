package com.itheima.ssm.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itheima.ssm.mapper.MbMapper;
import com.itheima.ssm.po.Fpxm;
import com.itheima.ssm.po.Mb;
import com.itheima.ssm.po.Page;
@Service(value="MbService")
public class MbService {
	@Autowired
	private MbMapper MbMapper;
	
	 public List<Mb> findMbList(Mb Mb) throws Exception{
	    	return MbMapper.findMbList(Mb);
	    };
	    public List<Mb> findmbbymbt(@Param("mbt") String mbt) throws Exception {
			return MbMapper.findmbbymbt(mbt);
		}
	    public Mb findmbbyid(Integer id) {
	    	Mb Mb = MbMapper.findmbbyid(id);
	        return Mb; 
		}
	    public void updateMb(Mb Mb) {
	    	MbMapper.updateMb(Mb);
		}  
	    public void deleteMb(Integer id) {
	    	MbMapper.deleteMb(id);
		}
	    public int insertMb(String mbt,String mnr) {
	    	Mb Mb=new Mb();
			Mb.setMbt(mbt);
			Mb.setMnr(mnr);
			return MbMapper.insertMb(Mb);
		}
	    public long getAllMbCount() {
			return MbMapper.getAllMbCount();
		}
		public List<Mb> getMbList(Page page) {
			return MbMapper.getMbList(page);
		}
}
