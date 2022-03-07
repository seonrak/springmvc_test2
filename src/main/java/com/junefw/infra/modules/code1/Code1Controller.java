package com.junefw.infra.modules.code1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Code1Controller {

	@Autowired
	Code1Serviceimple service;
	
	@RequestMapping(value = "/code1/infCodeList")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String codeGroubList(Model model)  throws Exception {

		List<Code1> list = service.selectList();
		
		model.addAttribute("list", list);
		
		return "code1/infCodeList";
	
	}
	
	@RequestMapping(value = "/code1/infCodeForm")
	public String codeGroup1Form()  throws Exception {
		
		return "code1/infCodeForm";
	
	}
	
	@RequestMapping(value = "/code1/infCodeInst")
	public String codeGroup1Inst(Code1 dto)  throws Exception {
		
		System.out.println();
		service.insert(dto);
		return "";
		
	}
	
	@RequestMapping(value = "/code1/infrCodeView")
	public String codeGroup1View(Code1Vo vo, Model model)  throws Exception {
		
		System.out.println("vo.getIfcgSeq():" + vo.getIfcgSeq());
		//디비까지 가서 한 건의 데이터 값을 가지고 온다. vo
		Code1 rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "code1/infrCode1View";
		
	}
	
	@RequestMapping(value = "/code1/infrCodeForm2")
	public String codeGroup1Form2(Code1Vo vo,  Model model)  throws Exception {
		
		Code1 rt = service.selectOne(vo);
		
		model.addAttribute("rt", rt);
		
		
		
		return "\"code1/infrCodeForm2";
	
	}
	
	
}