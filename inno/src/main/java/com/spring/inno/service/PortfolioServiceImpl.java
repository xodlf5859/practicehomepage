package com.spring.inno.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.inno.command.PageMaker;
import com.spring.inno.command.SearchCriteria;
import com.spring.inno.dao.PortfolioDAO;
import com.spring.inno.dto.PortfolioVO;

public class PortfolioServiceImpl implements PortfolioService{

	private PortfolioDAO portfolioDAO;
	public void setPortfolioDAO(PortfolioDAO portfolioDAO) {
		this.portfolioDAO = portfolioDAO;
	}
	
	
	@Override
	public Map<String, Object> getPortfolioList(SearchCriteria cri) throws SQLException {

		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<PortfolioVO> portfolioList = portfolioDAO.selectPortfolioCriteria(cri);
		
		int totalCnt = portfolioDAO.selectPortfolioCriteriaTotalCnt(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCnt);
		
		dataMap.put("portfolioList", portfolioList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}


	@Override
	public void regist(PortfolioVO portfolio) throws SQLException {

		int por_num = portfolioDAO.selectPortfolioSeqNext();
		
		portfolio.setPor_num(por_num);
		
		portfolioDAO.insertPortfolio(portfolio);
	}


	@Override
	public PortfolioVO getPortfolio(int por_num) throws SQLException {
		PortfolioVO portfolio = portfolioDAO.selectPortfolioByNum(por_num);
		String first = portfolio.getPor_content();
		String first2 = first.substring(first.indexOf("img"),first.indexOf("\">")+2 );
		String first3 = "<"+first2;
		System.out.println("asdsadasdasdasd");
		System.out.println(first3);
		portfolio.setPor_first(first3);
		
		portfolioDAO.increaseViewCnt(por_num);
		
		return portfolio;
	}


	@Override
	public PortfolioVO getPortfolioForModify(int por_num) throws SQLException {
		PortfolioVO portfolio = portfolioDAO.selectPortfolioByNum(por_num);
		String first = portfolio.getPor_content();
		String first2 = first.substring(first.indexOf("img"),first.indexOf("\">")+2 );
		String first3 = "<"+first2;
		
		portfolio.setPor_first(first3);
		
		return portfolio;
	}
	
	@Override
	public void modify(PortfolioVO portfolio) throws SQLException {
		portfolioDAO.updatePortfolio(portfolio);
	}

	@Override
	public void remove(int por_num) throws SQLException {
		portfolioDAO.deletePortfolio(por_num);
		
	}
}
