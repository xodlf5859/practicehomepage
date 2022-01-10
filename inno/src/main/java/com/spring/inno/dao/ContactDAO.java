package com.spring.inno.dao;

import java.sql.SQLException;

import com.spring.inno.dto.ContactVO;

public interface ContactDAO {

	void insertContact(ContactVO contact) throws SQLException;

	int selectContactSeqNext() throws SQLException;

}
