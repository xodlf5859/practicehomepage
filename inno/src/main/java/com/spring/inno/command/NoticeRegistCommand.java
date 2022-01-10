package com.spring.inno.command;

import com.spring.inno.dto.NoticeVO;

public class NoticeRegistCommand {

	private String notice_title;
	private String notice_writer;
	private String notice_content;
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_writer() {
		return notice_writer;
	}
	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	
	public NoticeVO toNoticeVO() {
		NoticeVO notice = new NoticeVO();
		
		notice.setNotice_content(notice_content);
		notice.setNotice_title(notice_title);
		notice.setNotice_writer(notice_writer);
		
		return notice;
	}
}
