package com.spring.inno.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.inno.dto.ContactVO;

public class ContactDAOImpl implements ContactDAO {

	
	private SqlSession session;
    public void setSession(SqlSession session) {
		this.session = session;
	}
	@Override
	public void insertContact(ContactVO contact) throws SQLException {
		session.update("Contact-Mapper.contactRegist",contact);
	}
	
	
	@Override
	public int selectContactSeqNext() throws SQLException {
		int cnt = session.selectOne("Contact-Mapper.selectContactNext");
		return cnt;
	}
}
