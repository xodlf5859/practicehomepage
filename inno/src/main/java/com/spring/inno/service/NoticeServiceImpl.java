package com.spring.inno.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.inno.command.PageMaker;
import com.spring.inno.command.SearchCriteria;
import com.spring.inno.dao.NoticeDAO;
import com.spring.inno.dto.NoticeVO;

public class NoticeServiceImpl implements NoticeService {

	private NoticeDAO noticeDAO;
	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}
	
	@Override
	public Map<String, Object> getNoticeList(SearchCriteria cri) throws SQLException {
	
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<NoticeVO> noticeList = noticeDAO.selectNoticeCriteria(cri);
		
		int totalCount = noticeDAO.selectNoticeCriteriaTotalCount(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		dataMap.put("noticeList", noticeList);
		dataMap.put("pageMaker", pageMaker);
		
		
		return dataMap;
	}
	
	@Override
	public void regist(NoticeVO notice) throws SQLException {
		int notice_num = noticeDAO.selectNoticeSeqNext();
		
		notice.setNotice_num(notice_num);
		
		noticeDAO.insertNotice(notice);
	}
	
	@Override
	public NoticeVO getNotice(int notice_num) throws SQLException {
		
		NoticeVO notice = noticeDAO.selectnoticeByNum(notice_num);
		String test = notice.getNotice_content();
		String test2 = test.substring(3,test.indexOf("\">")+2 );
		
		System.out.println(test2);

		notice.setNotice_test(test2);
		System.out.println("으아아악");
		System.out.println(notice.getNotice_test());
		noticeDAO.increaseViewCnt(notice_num);
		return notice;
	}
	
	@Override
	public NoticeVO getNoticeForModify(int notice_num) throws SQLException {

		NoticeVO notice = noticeDAO.selectnoticeByNum(notice_num);
		String test = notice.getNotice_content();
		String test2 = test.substring(3,test.indexOf("\">")+2 );
		
		System.out.println(test2);

		notice.setNotice_test(test2);
		System.out.println("으아아악");
		System.out.println(notice.getNotice_test());

		return notice;
	}
	
	@Override
	public void remove(int notice_num) throws SQLException {

		noticeDAO.deleteNotice(notice_num);
	}
	
	@Override
	public void modify(NoticeVO notice) throws SQLException {
		noticeDAO.updateNotice(notice);
	}
}
