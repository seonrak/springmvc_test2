package com.junefw.infra.modules.code1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Code1Serviceimple implements Code1Service{

	@Autowired
	Code1Dao dao;
	
	@Override
	public List<Code1> selectList() throws Exception {
		return dao.selectList(); 
	}

	@Override
	public int insert(Code1 dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public Code1 selectOne(Code1Vo vo) throws Exception {
		
		return dao.selectOne(vo);
		
	}

	
	
	
	
}