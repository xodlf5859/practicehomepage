package com.spring.inno.service;

import java.sql.SQLException;

import com.spring.inno.dao.MemberDAO;
import com.spring.inno.dto.MemberVO;

public class MemberServiceImpl implements MemberService {

	private MemberDAO memberDAO;

	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	@Override
	public MemberVO login(MemberVO member) throws Exception {

		return memberDAO.login(member);
	}

	@Override
	public void regist(MemberVO member) throws SQLException {
		int mem_num = memberDAO.getSeqNextVal();
		member.setMem_num(mem_num);
		memberDAO.insertMember(member);
	}

	@Override
	public MemberVO getMemberById(String mem_id) throws SQLException {
		MemberVO member = memberDAO.selectMemberById(mem_id);
		return member;
	}

}
