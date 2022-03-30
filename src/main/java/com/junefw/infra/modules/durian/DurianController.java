package com.junefw.infra.modules.durian;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DurianController {

	@Autowired
	DurianServiceimple service;
	
	@RequestMapping(value = "/durian/durianList")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String memberList(Model model) throws Exception {

		List<Durian> list = service.selectList();
		model.addAttribute("list", list);

		return "durian/durianList";
		
	}
	
	@RequestMapping(value = "/durian/durianView")
	public String durianView(Model model) throws Exception {

		return "durian/durianView";
	}
	
	@RequestMapping(value = "/durian/durianForm")
	public String durianForm(Model model) throws Exception {
		
		return "durian/durianForm";
	}
	@RequestMapping(value = "/durian/durianEdit")
	public String durianEdit(Model model) throws Exception {
		
		return "durian/durianEdit";
	}
	
	@RequestMapping(value = "/durian/durianInst")
	public String memberInst(Model model, Durian dto) throws Exception {
		
		

		return "";
	}
}