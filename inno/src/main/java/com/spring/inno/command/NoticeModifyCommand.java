package com.spring.inno.command;

import com.spring.inno.dto.NoticeVO;

public class NoticeModifyCommand extends NoticeRegistCommand{

	private int notice_num;

	public int getNotice_num() {
		return notice_num;
	}

	public void setNotice_num(int notice_num) {
		this.notice_num = notice_num;
	}
	
	@Override
	public NoticeVO toNoticeVO() {
	
		NoticeVO notice = super.toNoticeVO();
		notice.setNotice_num(notice_num);
		return notice;
	}
}
