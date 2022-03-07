package com.junefw.infra.modules.code1;


import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class Code1Dao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.code.CodeMpp";

	public List<Code1> selectList(){ 
		return sqlSession.selectList(namespace + ".selectList", "");
	}
	
	public int insert(Code1 dto) {return sqlSession.insert(namespace + ".insert",dto);}
	
	public Code1 selectOne(Code1Vo vo) {return sqlSession.selectOne(namespace + ".selectOne",vo);}

	
	
	
	


}