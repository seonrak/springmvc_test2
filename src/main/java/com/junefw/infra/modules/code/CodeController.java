package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {

	@Autowired
	CodeServiceimple service;
	
	@RequestMapping(value = "/code/codeGroup1List")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String codeGroubList(Model model)  throws Exception {

		List<Code> list = service.selectList();
		
		model.addAttribute("list", list);
		
		return "code/codeGroup1List";
	
	}
	
	@RequestMapping(value = "/code/codeGroup1Form")
	public String codeGroup1Form()  throws Exception {
		
		return "code/codeGroup1Form";
	
	}
	
	@RequestMapping(value = "/code/codeGroup1Inst")
	public String codeGroup1Inst(Code dto)  throws Exception {
		
		System.out.println();
		service.insert(dto);
		return "";
		
	}
	
	@RequestMapping(value = "/code/codeGroup1View")
	public String codeGroup1View(CodeVo vo, Model model)  throws Exception {
		
		System.out.println("vo.getIfcdSeq():" + vo.getIfcdSeq());
		//디비까지 가서 한 건의 데이터 값을 가지고 온다. vo
		Code rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "code/codeGroup1View";
		
	}
	
	@RequestMapping(value = "/code/codeGroup1Form2")
	public String codeGroup1Form2(CodeVo vo,  Model model)  throws Exception {
		
		Code rt = service.selectOne(vo);
		
		model.addAttribute("rt", rt);
		
		
		
		return "\"code/codeGroup1Form2";
	
	}
	
	
}