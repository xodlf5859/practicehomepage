package com.spring.inno.controller;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.inno.command.NoticeModifyCommand;
import com.spring.inno.command.PortfolioModifyCommand;
import com.spring.inno.command.PortfolioRegistCommand;
import com.spring.inno.command.SearchCriteria;
import com.spring.inno.dto.PortfolioVO;
import com.spring.inno.service.PortfolioService;

@Controller
@RequestMapping("/portfolio")
public class PortfolioController {

	@Autowired
	private PortfolioService service;
	
	@RequestMapping("/list")
	public ModelAndView list(SearchCriteria cri, ModelAndView mnv) throws SQLException{
		String url = "portfolio/list";
		
		Map<String, Object> dataMap = service.getPortfolioList(cri);
		
		mnv.addObject("dataMap",dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/registForm")
	public String registForm() {
		String url= "portfolio/regist";
		
		return url;
	}
	
	@RequestMapping("/regist")
	public String regist(PortfolioRegistCommand regReq,HttpServletRequest request,RedirectAttributes rttr) throws Exception{
		String url = "redirect:/portfolio/list.do";
		
		PortfolioVO portfolio = regReq.toPortfolioVO();
		
		service.regist(portfolio);
		
		
		rttr.addFlashAttribute("from","regist");

		return url;
	}
	
	@RequestMapping("/detail")
	public ModelAndView detail(int por_num,String from, ModelAndView mnv) throws SQLException{
		String url = "portfolio/detail";
		
		PortfolioVO portfolio = null;
		if(from!=null && from.equals("list")) {
			portfolio = service.getPortfolio(por_num);
			url="redirect:/portfolio/detail.do?por_num="+por_num;
		}else {
			portfolio=service.getPortfolioForModify(por_num);
		}
		
		mnv.addObject("portfolio",portfolio);
		mnv.setViewName(url);
		
		return mnv;
		
	}
	
	@RequestMapping("/modifyForm")
	public ModelAndView modifyForm(int por_num,ModelAndView mnv) throws SQLException{
		String url = "portfolio/modify";
		
		PortfolioVO portfolio = service.getPortfolioForModify(por_num);
		
		mnv.addObject("portfolio",portfolio);
		mnv.setViewName(url);
		
		return mnv;
		}
	
	@RequestMapping(value="/modify",method=RequestMethod.POST)
	public String modifyPost(HttpServletRequest request,RedirectAttributes rttr,PortfolioModifyCommand modifyReq) throws Exception {
		String url = "redirect:/portfolio/list.do";

		PortfolioVO portfolio = modifyReq.toPortfolioVO();
		
		service.modify(portfolio);
		
		rttr.addFlashAttribute("from","modify");
		rttr.addAttribute("por_num",portfolio.getPor_num());
		
		return url;
	}	
	
	@RequestMapping(value="/remove",method=RequestMethod.POST)
	public String remove(int por_num,RedirectAttributes rttr) throws Exception{
		String url = "redirect:/portfolio/list.do";
		
		service.remove(por_num);
		
		rttr.addFlashAttribute("from","remove");
		rttr.addAttribute("por_num",por_num);
		
		return url;
	}
	
}
