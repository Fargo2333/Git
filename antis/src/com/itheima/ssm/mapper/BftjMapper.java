package com.itheima.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.ssm.po.Bftj;
import com.itheima.ssm.po.Page;
import com.itheima.ssm.po.Pkh;
import com.itheima.ssm.po.pkhgj;

public interface BftjMapper {
	public long getbfyshCount() throws Exception;
	public List<Bftj> findbfysh(Page page) throws Exception;
	public long getbfwshCount() throws Exception;
	public List<Bftj> findbfwsh(Page page) throws Exception;
	public Bftj findbftjbyId(Integer id) throws Exception;
	public void updatebftj(Bftj Bftj);  
	public void deletebftj(Integer id);
	public long getpkhyshCount();
	public List<Pkh> findpkhysh(Page page) throws Exception;
	public Pkh findpkhbyId(Integer id);
	public void updatepkh(Pkh Pkh);  
	public void deletepkh(Integer id);
	public int insertpkh(Pkh Pkh);
	public int insertbftj(Bftj bftj);
	public long getpkhwshCount();
	public List<Pkh> findpkhwsh(Page page) throws Exception;
	public void updatepkhsh(Pkh pkh);
	public void updatebfsh(Bftj Bftj);
	public void deletebfsh(Integer id);
	public List<pkhgj> pkhgj(Page page);
	public long pkhgjCount();
	public void updatepkhgj(Pkh pkh);
	public List<Bftj> findBftjyshList(Bftj bftj);
	public Pkh findpkhtidById(Integer id) throws Exception;
	public void updatejdgl(Pkh pkh);
	public List<Pkh> findpkhlb(@Param("pxm") String pxm,@Param("pxh") Integer pxh,@Param("pzy") String pzy,@Param("pbj") String pbj,@Param("psfz") String psfz);
	public void updatefpjh(Bftj Bftj);
	public void updatefpcs(Pkh pkh);
	public void updaterwgz(Bftj Bftj);
	public List<Bftj> findbftjbytxm(String txm);
	public Bftj findbftjbyIdbfb(Integer id);
	
}