package com.spring.inno.service;

import java.sql.SQLException;

import com.spring.inno.dto.MemberVO;

public interface MemberService {

	//로그인
	public MemberVO login(MemberVO member) throws Exception;
	
	//회원가입
	public void regist(MemberVO member) throws SQLException;
	
	//중복체크
	MemberVO getMemberById(String mem_id) throws SQLException;
}
