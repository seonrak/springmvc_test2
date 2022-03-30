package com.junefw.infra.modules.durian;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DurianServiceimple implements DurianService{

	@Autowired
	DurianDao dao;
	
	@Override
	public List<Durian> selectList() throws Exception {
		return dao.selectList(); 
	}
	
	@Override
	public int insert(Durian dto) throws Exception {
		return dao.insert(dto); 
	}

	@Override
	public Durian selectOne(DurianVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
}
