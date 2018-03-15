package com.itheima.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.ssm.po.Mb;
import com.itheima.ssm.po.Page;

public interface MbMapper {
    int deleteByPrimaryKey(Integer mid);
    int insert(Mb record);
    int insertSelective(Mb record);
    Mb selectByPrimaryKey(Integer mid);
    int updateByPrimaryKeySelective(Mb record);
    int updateByPrimaryKey(Mb record);
    public List<Mb> findMbList(Mb Mb) throws Exception;
    public List<Mb> findmbbymbt(@Param("mbt") String mbt) throws Exception;
    public Mb findmbbyid(Integer id);
    public void updateMb(Mb Mb);  
    public void deleteMb(Integer id);
    public int insertMb(Mb Mb);
    public long getAllMbCount();
	public List<Mb> getMbList(Page page);
  
}