package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {
//	paging
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = 10;								// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5;								// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;
	
	private int startRnumForMysql = 0;							// 쿼리 시작 row

	@Autowired
	CodeServiceimple service;
	
	
	@RequestMapping(value = "/code/codeGroup1List")
	public String codeGroup1List(CodeVo vo, Model model) throws Exception {
		//count 가져올 것
		int count = service.selectOneCount(vo);
		
		if(count != 0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
		}else {
			//by pass
		}
		model.addAttribute("vo", vo);
		return "code/codeGroup1List";
	
	}
public void setParamsPaging(int totalRowsParam) {
		
		totalRows = totalRowsParam;

		totalPages = totalRows / rowNumToShow;

		if (totalRows % rowNumToShow > 0) {
			totalPages = totalPages+ 1;
		}

		if (totalPages < thisPage) {
			thisPage = totalPages;
		}
		
		startPage = (((thisPage - 1) / pageNumToShow) * pageNumToShow + 1);

		endPage = (startPage + pageNumToShow - 1);

		if (endPage > totalPages) {
			endPage = (totalPages);
		}
		
		endRnumForOracle = ((rowNumToShow * thisPage));
		startRnumForOracle = ((endRnumForOracle - rowNumToShow) + 1);
		if (startRnumForOracle < 1) startRnumForOracle = 1;
		
		
		if (thisPage == 1) {
			startRnumForMysql = 0;
		} else {
			startRnumForMysql = ((rowNumToShow * (thisPage-1)));
		}
		
		System.out.println("getThisPage():" + thisPage);
		System.out.println("getTotalRows():" + totalRows);
		System.out.println("getRowNumToShow():" + rowNumToShow);
		System.out.println("getTotalPages():" + totalPages);
		System.out.println("getStartPage():" + startPage);
		System.out.println("getEndPage():" + endPage);		
		System.out.println("getStartRnumForOracle():" + startRnumForOracle);
		System.out.println("getEndRnumForOracle():" + endRnumForOracle);
		System.out.println("getStartRnumForMysql(): " + startRnumForMysql);
		
	}

	
	
	
	@RequestMapping(value = "/code/codeGroup1Form")
	public String codeGroup1Form()  throws Exception {
		
		return "code/codeGroup1Form";
	
	}
	
	@RequestMapping(value = "/code/codeGroup1Inst")
	public String codeGroup1Inst(Code dto)  throws Exception {
		
		service.insert(dto);
		return "";
		
	}
	
	@RequestMapping(value = "/code/codeGroup1View")
	public String codeGroup1View(CodeVo vo, Model model)  throws Exception {
		
		
		Code rt = service.selectOne(vo);
		
		model.addAttribute("rt", rt);
		
		return "code/codeGroup1View";
		
	}
	
	@RequestMapping(value = "/code/codeGroup1Form2")
	public String codeGroup1Form2(CodeVo vo,  Model model)  throws Exception {
		
		Code rt = service.selectOne(vo);
		
		model.addAttribute("rt", rt);
		
		
		
		return "\"code/codeGroup1Form2";
	
	}
	
	@RequestMapping(value = "/code/codeGroup1Updt")
	public String codeGroup1Updt(Code dto)  throws Exception {
		
		
		service.update(dto);
		return "";
		
	}
	@RequestMapping(value = "/code/codeList")
	public String codeList(CodeVo vo,Model model)  throws Exception {
		
		List<Code> list = service.selectListCode(vo);
		model.addAttribute("list", list);
		
		List<Code> listCodeGroup1 = service.selectList(vo);
		model.addAttribute("listCodeGroup1", listCodeGroup1);
		
		return "code/codeList";
		
	}
	
	
	
	@RequestMapping(value = "/code/codeForm")
	public String codeForm(CodeVo vo, Model model)  throws Exception {
		
		List<Code> list = service.selectList(vo);
		
		model.addAttribute("list", list);
		
		
		return "code/codeForm";
		
	}
	
	@RequestMapping(value = "/code/codeInst")
	public String codeInst(Code dto)  throws Exception {
		
		service.insertCode(dto);
		return "";
		
	}
	
	@RequestMapping(value = "/code/codeView")
	public String codeView(CodeVo vo, Model model)  throws Exception {
		
		
		Code rt = service.selectOneCode(vo);
		
		model.addAttribute("rt", rt);
		
		return "code/codeView";
		
	}
	
	@RequestMapping(value = "/code/codeForm2")
	public String codeForm2(CodeVo vo,  Model model)  throws Exception {
		
		Code rt = service.selectOneCode(vo);
		
		model.addAttribute("rt", rt);
		
		
		
		return "\"code/codeGroup1Form2";
		
	}
	
	@RequestMapping(value = "/code/codeUpdt")
	public String codeUpdt(Code dto)  throws Exception {
		
		
		service.updateCode(dto);
		return "";
		
	}
	
	
}