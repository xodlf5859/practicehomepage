package com.spring.inno.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.inno.command.SearchCriteria;
import com.spring.inno.dto.NoticeVO;

public interface NoticeService {

	//리스트 조회
	Map<String, Object> getNoticeList(SearchCriteria cri) throws SQLException;
	
	//상세보기
	NoticeVO getNotice(int notice_num) throws SQLException;
	
	NoticeVO getNoticeForModify(int notice_num) throws SQLException;
	
	//등록
	void regist(NoticeVO notice) throws SQLException;
	
	//수정
	void modify(NoticeVO notice) throws SQLException;
	//삭제
	void remove(int notice_num) throws SQLException;
}
