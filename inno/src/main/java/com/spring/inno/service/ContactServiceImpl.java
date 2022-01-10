package com.spring.inno.service;

import java.sql.SQLException;

import com.spring.inno.dao.ContactDAO;
import com.spring.inno.dto.ContactVO;

public class ContactServiceImpl implements ContactService{
	
	private ContactDAO contactDAO;
	
	public void setContactDAO(ContactDAO contactDAO) {
		this.contactDAO = contactDAO;
	}
	
	@Override
	public void insert(ContactVO contact) throws SQLException {

		int con_num = contactDAO.selectContactSeqNext();
		contact.setCon_num(con_num);
		contactDAO.insertContact(contact);
	}

}
