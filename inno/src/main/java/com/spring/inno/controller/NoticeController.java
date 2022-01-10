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
import com.spring.inno.command.NoticeRegistCommand;
import com.spring.inno.command.SearchCriteria;
import com.spring.inno.dto.NoticeVO;
import com.spring.inno.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@Autowired
	private NoticeService service;
	
	
	@RequestMapping("/list")
	public ModelAndView list(SearchCriteria cri, ModelAndView mnv) throws SQLException{
		String url = "notice/list";
		
		Map<String, Object> dataMap = service.getNoticeList(cri);

		mnv.addObject("dataMap",dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/registForm")
	public String registForm() {
		String url= "notice/regist";
		
		return url;
	}
	
	
	@RequestMapping("/regist")
	public String regist(NoticeRegistCommand regReq, HttpServletRequest request, RedirectAttributes rttr) throws SQLException{
		String url = "redirect:/notice/list.do";
		
		NoticeVO notice =regReq.toNoticeVO();
		
		service.regist(notice);
		
		rttr.addFlashAttribute("from","regist");
		return url;
	}
	
	@RequestMapping("/detail")
	public ModelAndView detail(int notice_num,String from, ModelAndView mnv) throws SQLException{
		
		String url = "notice/detail";
		NoticeVO notice = null;
		if(from!=null && from.equals("list")) {
			notice=service.getNotice(notice_num);
			url="redirect:/notice/detail.do?notice_num="+notice_num;
		}else {
			notice=service.getNoticeForModify(notice_num);
		}
		
		System.out.println("컨트롤러:"+notice.getNotice_test());
		
		mnv.addObject("notice",notice);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/modifyForm")
	public ModelAndView modifyForm(int notice_num,ModelAndView mnv) throws SQLException{
		String url = "notice/modify";
		
		NoticeVO notice = service.getNoticeForModify(notice_num);
		
		mnv.addObject("notice",notice);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping(value="/modify",method=RequestMethod.POST)
	public String modifyPost(HttpServletRequest request,RedirectAttributes rttr,NoticeModifyCommand modifyReq) throws Exception {
		
		String url = "redirect:/notice/list.do";
		
		NoticeVO notice = modifyReq.toNoticeVO();
		
		service.modify(notice);
		
		rttr.addFlashAttribute("from","modify");
		rttr.addAttribute("notice_num",notice.getNotice_num());
		
		return url;
	}
	
	@RequestMapping(value="/remove",method=RequestMethod.POST)
	public String remove(int notice_num,RedirectAttributes rttr) throws Exception{
		String url = "redirect:/notice/list.do";
		
		service.remove(notice_num);
		
		rttr.addFlashAttribute("from","remove");
		rttr.addAttribute("notice_num",notice_num);
		
		return url;
	}
}
