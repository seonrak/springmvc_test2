package com.junefw.infra.modules.code1;

import java.util.List;

public interface Code1Service {
	
	public List<Code1> selectList() throws Exception;
	public int insert(Code1 dto) throws Exception;
	public Code1 selectOne(Code1Vo vo) throws Exception;
	
	

}