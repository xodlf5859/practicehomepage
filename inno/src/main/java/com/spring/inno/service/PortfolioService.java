package com.spring.inno.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.inno.command.SearchCriteria;
import com.spring.inno.dto.NoticeVO;
import com.spring.inno.dto.PortfolioVO;

public interface PortfolioService {

	//리스트
	
	Map<String, Object> getPortfolioList(SearchCriteria cri) throws SQLException;
	
	//등록
	void regist(PortfolioVO portfolio) throws SQLException;	
	
	//상세보기
	PortfolioVO getPortfolio(int por_num) throws SQLException;
	
	PortfolioVO getPortfolioForModify(int por_num) throws SQLException;
	
	//수정
	void modify(PortfolioVO portfolio) throws SQLException;
	//삭제
	void remove(int por_num) throws SQLException;
}
