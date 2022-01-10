package com.spring.inno.command;

import com.spring.inno.dto.PortfolioVO;

public class PortfolioModifyCommand extends PortfolioRegistCommand {

	private int por_num;

	public int getPor_num() {
		return por_num;
	}

	public void setPor_num(int por_num) {
		this.por_num = por_num;
	}
	
	@Override
	public PortfolioVO toPortfolioVO() {
		PortfolioVO portfolio = super.toPortfolioVO();
		portfolio.setPor_num(por_num);
		return portfolio;
	}
}
