package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceimple implements MemberService{

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList() throws Exception {
		return dao.selectList(); 
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		return dao.insert(dto); 
	}
	
	@Override
	public Member selectOneLogin(Member dto) {
		return dao.selectOneLogin(dto);
	}
	
}
