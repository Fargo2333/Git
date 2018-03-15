package com.itheima.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itheima.ssm.mapper.PkhMapper;
import com.itheima.ssm.po.Bftj;
import com.itheima.ssm.po.Pkh;
import com.itheima.ssm.pojo.guanliTongji_zhu2;
import com.itheima.ssm.service.PkhService;
@Service(value="PkhService")

public class PkhService {
	@Autowired
	private PkhMapper PkhMapper;

	public List<Pkh> query_zpyynumber() {
		List<Pkh> query_zpyynumber = PkhMapper.query_zpyynumber();
		return query_zpyynumber;
	}

	/*public List<Pkh> findPkhList(Pkh Pkh) throws Exception {
		return PkhMapper.findPkhList(Pkh);
	}
	public List<Village> findVillageList(Village Village) throws Exception {
		return PkhMapper.findVillageList(Village);
	}
	public List<Bftj> findBftjList(Bftj Bftj) throws Exception {
		return PkhMapper.findBftjList(Bftj);
	}*/

}
