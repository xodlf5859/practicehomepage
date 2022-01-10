package com.spring.inno.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.inno.command.SearchCriteria;
import com.spring.inno.dto.PortfolioVO;

public interface PortfolioDAO {
	
	List<PortfolioVO> selectPortfolioCriteria(SearchCriteria cri) throws SQLException;
	
	int selectPortfolioCriteriaTotalCnt(SearchCriteria cri) throws SQLException;
	
	//글 등록
	void insertPortfolio(PortfolioVO portfolio) throws SQLException;
	
	//상세조회
	PortfolioVO selectPortfolioByNum(int por_num) throws SQLException;
	
	//수정
	void updatePortfolio(PortfolioVO portfolio) throws SQLException;
	
	//조회수 증가
	void increaseViewCnt(int por_num) throws SQLException;

	//시퀀스
	int selectPortfolioSeqNext() throws SQLException;

	void deletePortfolio(int por_num) throws SQLException;
}
