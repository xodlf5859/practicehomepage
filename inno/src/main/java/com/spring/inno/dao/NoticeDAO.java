package com.spring.inno.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.inno.command.SearchCriteria;
import com.spring.inno.dto.NoticeVO;

public interface NoticeDAO {
	
	//조회
	List<NoticeVO> selectNoticeCriteria(SearchCriteria cri) throws SQLException;
	
	int selectNoticeCriteriaTotalCount(SearchCriteria cri) throws SQLException;
	
	//글 등록
	void insertNotice(NoticeVO notice) throws SQLException;
	
	//상세조회
	NoticeVO selectnoticeByNum(int notice_num) throws SQLException;
	
	//조회수 증가
	void increaseViewCnt(int notice_num) throws SQLException;
	
	//삭제
	void deleteNotice(int notice_num) throws SQLException;
	
	//수정
	void updateNotice(NoticeVO notice) throws SQLException;
	
	//시퀀스
	int selectNoticeSeqNext() throws SQLException;
}
