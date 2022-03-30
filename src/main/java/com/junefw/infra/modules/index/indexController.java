package com.junefw.infra.modules.index;

import java.util.List;

/*import org.springframework.beans.factory.annotation.Autowired;*/
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexController {

	/*
	 * @Autowired IndexServiceimple service;
	 */
	
	@RequestMapping(value = "/index/indexView")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String Index(Model model) throws Exception {

		
		return "index/indexView";
		
	}
	
	@RequestMapping(value = "/index/indexLogin")
	public String memberForm(Model model) throws Exception {

		return "index/indexLogin";
	}
	
	
}