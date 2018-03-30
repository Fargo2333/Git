package com.itheima.ssm.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itheima.ssm.mapper.FpxmMapper;
import com.itheima.ssm.po.Fpxm;
import com.itheima.ssm.po.Page;

@Service(value="FpxmService")
public class FpxmService {
	@Autowired
	private FpxmMapper FpxmMapper;
	
	 public List<Fpxm> findFpxmList(Fpxm Fpxm) throws Exception{
	    	return FpxmMapper.findFpxmList(Fpxm);
	    };
	    public List<Fpxm> findfpxm(@Param("xxmmc") String xxmmc) throws Exception{
	    	return FpxmMapper.findfpxm(xxmmc);
	    }
	    public Fpxm findfpxmById(Integer id) {
	    	Fpxm Fpxm = FpxmMapper.findfpxmById(id);
	        return Fpxm;  
		}
	    public void updatefpxm(Fpxm Fpxm) {
	    	FpxmMapper.updatefpxm(Fpxm);
		}   
	    public void deletefpxm(Integer id){
	    	FpxmMapper.deletefpxm(id);
	    }
		public int insertFpxm(String xxmmc, String xlb, String xjsnrjgm, String xzrdw, Integer xtzze) {
			Fpxm fpxm = new Fpxm();
			fpxm.setXxmmc(xxmmc);
			fpxm.setXlb(xlb);
			fpxm.setXjsnrjgm(xjsnrjgm);
			fpxm.setXzrdw(xzrdw);
			fpxm.setXtzze(xtzze);
			fpxm.setXzt("待审批");
			
			int i = FpxmMapper.insertfpxm(fpxm);
			return i;
		}
		public long getAllFpxmCount() {
			return FpxmMapper.getAllFpxmCount();
		}
		public List<Fpxm> getFpxmList(Page page) {
			return FpxmMapper.getFpxmList(page);
		}
		/*public long getfpxmCount(@Param("townname") String townname,@Param("vname") String vname,@Param("pszz") String pszz,@Param("xxmmc") String xxmmc) {
			return FpxmMapper.getfpxmCount(townname, vname, pszz, xxmmc);
		}
		public List<Fpxm> getfpxm(Page page) {
			return FpxmMapper.getfpxm(page);
		}*/
		public List<Fpxm> findfpxmdsp(Page page) throws Exception {
			return FpxmMapper.findfpxmdsp(page);
		}
		public long getfpxmdspCount() {
			return FpxmMapper.getfpxmdspCount();
		}
		public void updatefpxmdsp(Fpxm Fpxm) {
			FpxmMapper.updatefpxmdsp(Fpxm);
		}  
		public void deletefpxmdsp(Integer id) {
			FpxmMapper.deletefpxmdsp(id);
		}
		public List<Fpxm> findfpxmjxz(Page page) throws Exception {
			return FpxmMapper.findfpxmjxz(page);
		}
		public long getfpxmjxzCount() {
			return FpxmMapper.getfpxmjxzCount();
		}
		public void updatefpxmjxz(Fpxm Fpxm) {
			FpxmMapper.updatefpxmjxz(Fpxm);
		}  
}
