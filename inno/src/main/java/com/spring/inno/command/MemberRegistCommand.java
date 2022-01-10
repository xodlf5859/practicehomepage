package com.spring.inno.command;

import com.spring.inno.dto.MemberVO;

public class MemberRegistCommand {

	private int mem_num;
	private String mem_mail;
	private String mem_id;
	private String mem_pwd;
	private String mem_name;
	private String mem_phone;
	private String mem_photo;
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public String getMem_mail() {
		return mem_mail;
	}
	public void setMem_mail(String mem_mail) {
		this.mem_mail = mem_mail;
	}
	public String getMem_pwd() {
		return mem_pwd;
	}
	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_photo() {
		return mem_photo;
	}
	public void setMem_photo(String mem_photo) {
		this.mem_photo = mem_photo;
	}

	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public MemberVO toMemberVO() {
		
		MemberVO member = new MemberVO();
		
		member.setMem_mail(mem_mail);
		member.setMem_id(mem_id);
		member.setMem_name(mem_name);
		member.setMem_num(mem_num);
		member.setMem_phone(mem_phone);
		member.setMem_photo(mem_photo);
		member.setMem_pwd(mem_pwd);
		
		return member;
	}
}
