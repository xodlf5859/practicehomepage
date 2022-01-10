package com.spring.inno.controller;

import java.io.IOException;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.inno.command.MemberRegistCommand;
import com.spring.inno.dto.MemberVO;
import com.spring.inno.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/registForm", method=RequestMethod.GET)
	public String registForm() {
		String url = "member/regist";
		
		return url;
	}
	
	@RequestMapping(value="/regist.do", method= RequestMethod.POST)
	public String regist(MemberRegistCommand member) throws SQLException, IOException{
		String url = "member/regist_success";
		
		MemberVO memberVO = member.toMemberVO();
		
		memberService.regist(memberVO);
		
		return url;
		
	}
	
	@RequestMapping("/idCheck")
	@ResponseBody
	public ResponseEntity<String> idCheck(String mem_id) throws Exception{
		ResponseEntity<String> entity = null;
		
		try {
			MemberVO member = memberService.getMemberById(mem_id);
			
			if(member != null) {
				entity = new ResponseEntity<String>("duplicated",HttpStatus.OK);
			}else {
				entity = new ResponseEntity<String>("",HttpStatus.OK);
			}
		} catch (SQLException e) {
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
}
