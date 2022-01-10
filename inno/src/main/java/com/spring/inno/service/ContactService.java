package com.spring.inno.service;

import java.sql.SQLException;

import com.spring.inno.dto.ContactVO;

public interface ContactService {

	void insert(ContactVO contact) throws SQLException;
}
