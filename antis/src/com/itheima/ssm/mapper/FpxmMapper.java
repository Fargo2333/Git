package com.itheima.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.ssm.po.Fpxm;
import com.itheima.ssm.po.Page;

public interface FpxmMapper {
    int deleteByPrimaryKey(Integer xid);

    int insert(Fpxm record);

    int insertSelective(Fpxm record);
    Fpxm selectByPrimaryKey(Integer xid);
    int updateByPrimaryKeySelective(Fpxm record);
    int updateByPrimaryKey(Fpxm record);
    public List<Fpxm> findFpxmList(Fpxm Fpxm) throws Exception;
    public List<Fpxm> findfpxm(@Param("xxmmc") String xxmmc) throws Exception;
    public Fpxm findfpxmById(Integer id);
    public void updatefpxm(Fpxm fpxm);  
    public void deletefpxm(Integer id);
	public int insertfpxm(Fpxm fpxm);
	public long getAllFpxmCount();
	public List<Fpxm> getFpxmList(Page page);
	/*public long getfpxmCount(@Param("townname") String townname,@Param("vname") String vname,@Param("pszz") String pszz,@Param("xxmmc") String xxmmc);
	public List<Fpxm> getfpxm(Page page);*/
	public long getfpxmdspCount();
	public List<Fpxm> findfpxmdsp(Page page) throws Exception;
	public void updatefpxmdsp(Fpxm Fpxm);  
	public void deletefpxmdsp(Integer id);
	public long getfpxmjxzCount();
	public List<Fpxm> findfpxmjxz(Page page) throws Exception;
	public void updatefpxmjxz(Fpxm Fpxm);  
}