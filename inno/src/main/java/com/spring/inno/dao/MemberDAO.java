package com.spring.inno.dao;

import java.sql.SQLException;

import com.spring.inno.dto.MemberVO;

public interface MemberDAO {

	//로그인
	
	public MemberVO login(MemberVO member) throws Exception;
	//회원가입
	public void insertMember(MemberVO member) throws SQLException;
	
	//회원 조회
	MemberVO selectMemberById(String mem_id) throws SQLException;
	
	//시퀀스
	int getSeqNextVal() throws SQLException;
	
}
