package com.itheima.ssm.service;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itheima.ssm.mapper.BftjMapper;
import com.itheima.ssm.po.Bftj;
import com.itheima.ssm.po.Page;
import com.itheima.ssm.po.Pkh;
import com.itheima.ssm.po.pkhgj;
@Service(value="BftjService")
public class BftjService {

	@Autowired
	private BftjMapper BftjMapper;

	/*public List<Pkh> findPkhList(Pkh Pkh) throws Exception {
		return BftjMapper.findPkhList(Pkh);
	}
	public List<Village> findVillageList(Village Village) throws Exception {
		return BftjMapper.findVillageList(Village);
	}
	public List<Bftj> findBftjList(Bftj Bftj) throws Exception {
		return BftjMapper.findBftjList(Bftj);
	}
	public List<Bftj> findbfzrr(@Param("txm") String txm,@Param("tlxdh") Integer tlxdh,@Param("tdw") String tdw) throws Exception {
		return BftjMapper.findbfzrr(txm, tlxdh, tdw);
	}
	public List<Pkh> findpkhlb(@Param("vname") String vname,@Param("pszz") String pszz,@Param("phzxm") String phzxm,@Param("pzjhm") String pzjhm) throws Exception{
		return BftjMapper.findpkhlb( vname, pszz,phzxm,pzjhm);
	}
	public List<Organize> findOrganizeList(Organize Organize) throws Exception{
		return BftjMapper.findOrganizeList(Organize);
	}
	public Pkh findpkhtidById(Integer id) throws Exception {
		Pkh Pkh=BftjMapper.findpkhtidById(id);
		return Pkh;
	};
	public List<Bftj> findbftjbytdw(@Param("tdw") String tdw) throws Exception {
		return BftjMapper.findbftjbytdw(tdw);
	}
	
	public int insertbfzrr(String txm, String tdw, String tzw, String tlxdh, Integer tgold){
		Bftj bftj= new Bftj();
		bftj.setTxm(txm);
		bftj.setTdw(tdw);
		bftj.setTzw(tzw);
		bftj.setTlxdh(tlxdh);
		bftj.setTgold(tgold);
		bftj.setTshzt("已通过");
		int i = BftjMapper.insertbfzrr(bftj);
		return i;
	}
	public int insertpkh(String phzxm,String pzjlx,String pzjhm,String psfz,String plxdh,String pjtrk,String psfzfan,String pwfdj,String pjjcs,String ppkhsx,String pzyzpyy,String pzyzpxxyy,String pmz,String pvillagename,String pszz,String pzbdf,Integer pgold){
		Pkh Pkh=new Pkh();
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now=format.format(date);
		Pkh.setPhzxm(phzxm);
		Pkh.setPzjlx(pzjlx);
		Pkh.setPzjhm(pzjhm);
		Pkh.setPsfz(psfzfan);
		Pkh.setPlxdh(plxdh);
		Pkh.setPjtrk(pjtrk);
		Pkh.setPsfzfan(psfzfan);
		Pkh.setPwfdj(pwfdj);
		Pkh.setPjjcs(pjjcs);
		Pkh.setPpkhsx(ppkhsx);
		Pkh.setPzyzpyy(pzyzpyy);
		Pkh.setPzyzpxxyy(pzyzpxxyy);
		Pkh.setPmz(pmz);
		Pkh.setPvillagename(pvillagename);
		Pkh.setPszz(pszz);
		Pkh.setPzt("待帮扶");
		Pkh.setPzbdf(pzbdf);
		Pkh.setPywbfcs("无");
		Pkh.setPshzt("待审核");
		Pkh.setPtime(now);
		Pkh.setPgold(pgold);
		int i = BftjMapper.insertpkh(Pkh);
		return i;
		
	}
	public Bftj findbftjbyId(Integer id) {
		Bftj Bftj = BftjMapper.findbftjbyId(id);
        return Bftj;  
	}
	public void updatefpxm(Bftj Bftj) {
		BftjMapper.updatebftj(Bftj);
		}   
	public void deletebftj(Integer id){
		BftjMapper.deletebftj(id);
	    }
	public Pkh findpkhbyId(Integer id) {
		Pkh Pkh = BftjMapper.findpkhbyId(id);
        return Pkh;  
	}
	public void updatepkh(Pkh Pkh) {
		BftjMapper.updatepkh(Pkh);
	}  
	public void deletepkh(Integer id) {
		BftjMapper.deletepkh(id);
	}
	public List<Bftj> findBftjListysh(Bftj Bftj) throws Exception {
		return BftjMapper.findBftjListysh(Bftj);
	}
	public List<Pkh> findPkhListysh(Pkh Pkh) throws Exception {
		return BftjMapper.findPkhListysh(Pkh);
	}
	public List<Pkh> findPkhListwsh(Pkh Pkh) throws Exception {
		return BftjMapper.findPkhListwsh(Pkh);
	}
	public void updatepkhsh(Pkh Pkh) {
		BftjMapper.updatepkhsh(Pkh);
	}  
	public void updatejdgl(Pkh Pkh) {
		BftjMapper.updatejdgl(Pkh);
	}  
	public List<Bftj> findbftjsum(Bftj Bftj) {
		return BftjMapper.findbftjsum(Bftj);
	}
	public long getAllBftjCount() {
		return BftjMapper.getAllBftjCount();
	}
	public List<Bftj> getBftjList(Page page) {
		return BftjMapper.getBftjList(page);
	}
	public void updatefpjh(Bftj Bftj) {
		BftjMapper.updatefpjh(Bftj);
	}  
	public long getAllPkhCount() {
		return BftjMapper.getAllPkhCount();
	}
	public List<Pkh> getPkhList(Page page) {
		return BftjMapper.getPkhList(page);
	}
	public void updatefpcs(Pkh Pkh) {
		BftjMapper.updatefpcs(Pkh);
	}
	public long getpkhwshCount() {
		return BftjMapper.getpkhwshCount();
	}
	public List<Pkh> findpkhwsh(Page page) throws Exception {
		return BftjMapper.findpkhwsh(page);
	}
	public long getpkhyshCount() {
		return BftjMapper.getpkhyshCount();
	}
	public List<Pkh> findpkhysh(Page page) throws Exception {
		return BftjMapper.findpkhysh(page);
	}
	public void updaterwgz(Bftj Bftj) {
		BftjMapper.updaterwgz(Bftj);
	}
	public Bftj findbftjbyIdbfb(Integer id) {
		return BftjMapper.findbftjbyIdbfb(id);
	}
	public int insertbfzrr2(String txm, String tdw, String tzw, String tlxdh,Integer tgold){
		Bftj bftj= new Bftj();
		bftj.setTxm(txm);
		bftj.setTdw(tdw);
		bftj.setTzw(tzw);
		bftj.setTlxdh(tlxdh);
		bftj.setTgold(tgold);
		bftj.setTshzt("待审核");
		int i = BftjMapper.insertbfzrr(bftj);
		return i;
	}
	public long getbfwshCount() {
		return BftjMapper.getbfwshCount();
	}
	public List<Bftj> findbfwsh(Page page) throws Exception {
		return BftjMapper.findbfwsh(page);
	}
	public void updatebfsh(Bftj Bftj) {
		BftjMapper.updatebfsh(Bftj);
	}  
	public void deletebfsh(Integer id) {
		BftjMapper.deletebfsh(id);
	}
	
	public List<pkhgj> pkhgj(Page page) throws Exception {
		return BftjMapper.pkhgj(page);
	}
	public long pkhgjCount() {
		return BftjMapper.pkhgjCount();
	}
	public void updatepkhgj(Pkh Pkh) {
		BftjMapper.updatepkhgj(Pkh);
	} 
	
	public int insertfrontpkh(String phzxm,String psfz,String plxdh,String pjtrk,String ppkhsx,String pzyzpyy,String pzyzpxxyy,String pmz,String pvillagename,Integer pgold){
		Pkh Pkh=new Pkh();
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now=format.format(date);
		Pkh.setPhzxm(phzxm);
		Pkh.setPlxdh(plxdh);
		Pkh.setPjtrk(pjtrk);
		Pkh.setPpkhsx(ppkhsx);
		Pkh.setPzyzpyy(pzyzpyy);
		Pkh.setPzyzpxxyy(pzyzpxxyy);
		Pkh.setPmz(pmz);
		Pkh.setPvillagename(pvillagename);
		Pkh.setPzt("待帮扶");
		Pkh.setPywbfcs("无");
		Pkh.setPshzt("待审核");
		Pkh.setPtime(now);
		Pkh.setPgold(pgold);
		int i = BftjMapper.insertpkh(Pkh);
		return i;
		
	}*/
	public long getbfwshCount() throws Exception {
		return BftjMapper.getbfwshCount();
	}
	public List<Bftj> findbfwsh(Page page) throws Exception {
		return BftjMapper.findbfwsh(page);
	}
	public long getbfyshCount() throws Exception {
		return BftjMapper.getbfyshCount();
	}
	public List<Bftj> findbfysh(Page page) throws Exception {
		return BftjMapper.findbfysh(page);
	}
	public Bftj findbftjbyId(Integer id) throws Exception {
		Bftj Bftj = BftjMapper.findbftjbyId(id);
        return Bftj;  
	}
	public void updatebftj(Bftj Bftj) {
		BftjMapper.updatebftj(Bftj);
		}   
	public void deletebftj(Integer id){
		BftjMapper.deletebftj(id);
	    }
	public long getpkhyshCount() {
		return BftjMapper.getpkhyshCount();
	}
	public List<Pkh> findpkhysh(Page page) throws Exception {
		return BftjMapper.findpkhysh(page);
	}
	public Pkh findpkhbyId(Integer id) {
		Pkh Pkh = BftjMapper.findpkhbyId(id);
        return Pkh;  
	}
	public void updatepkh(Pkh Pkh) {
		BftjMapper.updatepkh(Pkh);
	}  
	public void deletepkh(Integer id) {
		BftjMapper.deletepkh(id);
	}
	public int insertpkh(String pxm,String psfz,String plxdh,String pjtrk,String ppkhsx,String pzyzpyy,String pzyzpxxyy,String pmz,Integer pgold,String pjtzz,Integer pxh,String pzy,String pbj,String pxb,String pnl){
		Pkh Pkh=new Pkh();
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now=format.format(date);
		Pkh.setPxm(pxm);
		Pkh.setPxh(pxh);
		Pkh.setPzy(pzy);
		Pkh.setPbj(pbj);
		Pkh.setPxb(pxb);
		Pkh.setPnl(pnl);
		Pkh.setPsfz(psfz);
		Pkh.setPlxdh(plxdh);
		Pkh.setPjtrk(pjtrk);
		Pkh.setPpkhsx(ppkhsx);
		Pkh.setPzyzpyy(pzyzpyy);
		Pkh.setPzyzpxxyy(pzyzpxxyy);
		Pkh.setPmz(pmz);
		Pkh.setPzt("待帮扶");
		Pkh.setPshzt("待审核");
		Pkh.setPtime(now);
		Pkh.setPgold(pgold);
		Pkh.setPjtzz(pjtzz);
		int i = BftjMapper.insertpkh(Pkh);
		return i;
		
	}
	public int insertbfzrr(String txm, String tzw, String tlxdh) {
		Bftj Bftj=new Bftj();
		Bftj.setTxm(txm);
		Bftj.setTzw(tzw);;
		Bftj.setTlxdh(tlxdh);
		Bftj.setTshzt("待审核");
		int i = BftjMapper.insertbftj(Bftj);
		return i;		
	}
	public long getpkhwshCount() {
		return BftjMapper.getpkhwshCount();
	}
	public List<Pkh> findpkhwsh(Page page) throws Exception {
		return BftjMapper.findpkhwsh(page);
	}
	public void updatepkhsh(Pkh Pkh) {
		BftjMapper.updatepkhsh(Pkh);
	}  
	public void updatebfsh(Bftj Bftj) {
		BftjMapper.updatebfsh(Bftj);
	}  
	public void deletebfsh(Integer id) {
		BftjMapper.deletebfsh(id);
	}
	public List<pkhgj> pkhgj(Page page) throws Exception {
		return BftjMapper.pkhgj(page);
	}
	public long pkhgjCount() {
		return BftjMapper.pkhgjCount();
	}
	public void updatepkhgj(Pkh Pkh) {
		BftjMapper.updatepkhgj(Pkh);
	}
	public List<Bftj> findBftjyshList(Bftj Bftj) throws Exception {
		return BftjMapper.findBftjyshList(Bftj);
	}
	public Pkh findpkhtidById(Integer id) throws Exception {
		Pkh Pkh=BftjMapper.findpkhtidById(id);
		return Pkh;
	}
	public void updatejdgl(Pkh Pkh) {
		BftjMapper.updatejdgl(Pkh);
	}
	public List<Pkh> findpkhlb(@Param("pxm") String pxm,@Param("pxh") Integer pxh,@Param("pzy") String pzy,@Param("pbj") String pbj,@Param("psfz") String psfz) {
		return BftjMapper.findpkhlb(pxm,pxh,pzy,pbj,psfz);
	}
	public void updatefpjh(Bftj Bftj) {
		BftjMapper.updatefpjh(Bftj);	
	}
	public void updatefpcs(Pkh Pkh) {
		BftjMapper.updatefpcs(Pkh);	
	}
	public void updaterwgz(Bftj Bftj) {
		BftjMapper.updaterwgz(Bftj);	
		
	}
	public List<Bftj> findbftjbytxm(String txm) {
		return BftjMapper.findbftjbytxm(txm); 
	}
	public Bftj findbftjbyIdbfb(Integer id) {
		Bftj Bftj=BftjMapper.findbftjbyIdbfb(id);
		return Bftj;
	}
	
}
