package com.spring.inno.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.inno.dto.MemberVO;

public class MemberDAOImpl implements MemberDAO{

	private SqlSession session;
    public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public MemberVO login(MemberVO member) throws Exception {
		MemberVO mem = session.selectOne("Member-Mapper.loginMember", member);
		
		return mem;
	}
	
	@Override
	public void insertMember(MemberVO member) throws SQLException {
		session.update("Member-Mapper.memberRegist",member);
	}
	
	@Override
	public MemberVO selectMemberById(String mem_id) throws SQLException {
		MemberVO member = session.selectOne("Member-Mapper.selectMemberById",mem_id);
		return member;
	}
	
	
	@Override
	public int getSeqNextVal() throws SQLException {
		int mem_num = session.selectOne("Member-Mapper.selectMemberNext");
		return mem_num;
	}
}
