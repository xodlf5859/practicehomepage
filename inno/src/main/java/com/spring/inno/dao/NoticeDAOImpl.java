package com.spring.inno.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.inno.command.SearchCriteria;
import com.spring.inno.dto.NoticeVO;

public class NoticeDAOImpl implements NoticeDAO{

	private SqlSession session;
    public void setSession(SqlSession session) {
		this.session = session;
	}
    
	@Override
	public List<NoticeVO> selectNoticeCriteria(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit= cri.getPerPageNum();
		
		RowBounds rowBouds = new RowBounds(offset, limit);
		
		List<NoticeVO> noticeList = session.selectList("Notice-Mapper.selectSearchNoticeList",cri,rowBouds);
		return noticeList;
	}
	
	@Override
	public int selectNoticeCriteriaTotalCount(SearchCriteria cri) throws SQLException {

		int cnt = session.selectOne("Notice-Mapper.selectSearchNoticeListCount",cri);
		return cnt;
	}
	
	@Override
	public void insertNotice(NoticeVO notice) throws SQLException {
		session.update("Notice-Mapper.insertNotice",notice);
	}
	
	@Override
	public NoticeVO selectnoticeByNum(int notice_num) throws SQLException {
		NoticeVO notice = session.selectOne("Notice-Mapper.selectNoticeByNum",notice_num);
		return notice;
	}
	
	@Override
	public int selectNoticeSeqNext() throws SQLException {
		
		int cnt = session.selectOne("Notice-Mapper.selectNoticeSeqNext");
		return cnt;
	}
	
	@Override
	public void increaseViewCnt(int notice_num) throws SQLException {
		session.update("Notice-Mapper.increaseViewCnt",notice_num);
	}
	
	@Override
	public void updateNotice(NoticeVO notice) throws SQLException {
		session.update("Notice-Mapper.updateNotice",notice);
		
	}
	@Override
	public void deleteNotice(int notice_num) throws SQLException {
		session.update("Notice-Mapper.deleteNotice",notice_num);
	}
}
