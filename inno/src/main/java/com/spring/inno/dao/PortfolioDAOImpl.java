package com.spring.inno.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.inno.command.SearchCriteria;
import com.spring.inno.dto.PortfolioVO;

public class PortfolioDAOImpl implements PortfolioDAO{

	private SqlSession session;
    public void setSession(SqlSession session) {
		this.session = session;
	}
	@Override
	public List<PortfolioVO> selectPortfolioCriteria(SearchCriteria cri) throws SQLException {

		int offset = cri.getStartRowNum();
		int limit= cri.getPerPageNum();
		
		RowBounds rowBouds = new RowBounds(offset, limit);

		List<PortfolioVO> portfolioList = session.selectList("Portfolio-Mapper.selectSearchPortfolioList",cri,rowBouds);
		return portfolioList;
	}
	@Override
	public int selectPortfolioCriteriaTotalCnt(SearchCriteria cri) throws SQLException {
		int cnt = session.selectOne("Portfolio-Mapper.selectSearchPortfolioListCount",cri);
		return cnt;
	}

	@Override
	public void insertPortfolio(PortfolioVO portfolio) throws SQLException {
		session.update("Portfolio-Mapper.insertPortfolio",portfolio);
	}
	
	@Override
	public PortfolioVO selectPortfolioByNum(int por_num) throws SQLException {
		
		PortfolioVO portfolio = session.selectOne("Portfolio-Mapper.selectPortfolioByNum",por_num);
		
		return portfolio;
	}
	
	@Override
	public void increaseViewCnt(int por_num) throws SQLException {
		session.update("Portfolio-Mapper.increaseViewCnt",por_num);
		
	}
	
	@Override
	public int selectPortfolioSeqNext() throws SQLException {
		int cnt = session.selectOne("Portfolio-Mapper.selectPortfolioSeqNext");
		return cnt;
		
	}

	@Override
	public void updatePortfolio(PortfolioVO portfolio) throws SQLException {
		session.update("Portfolio-Mapper.updatePortfolio",portfolio);
	}
	
	@Override
	public void deletePortfolio(int por_num) throws SQLException {
		session.update("Portfolio-Mapper.deletePortfolio",por_num);

	}
}
