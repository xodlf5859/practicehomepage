package com.spring.inno.command;

import com.spring.inno.dto.PortfolioVO;

public class PortfolioRegistCommand {

	private String por_title;
	private String por_content;
	private String por_writer;
	private String por_subtitle;
	private String por_category;
	public String getPor_title() {
		return por_title;
	}
	public void setPor_title(String por_title) {
		this.por_title = por_title;
	}
	public String getPor_content() {
		return por_content;
	}
	public void setPor_content(String por_content) {
		this.por_content = por_content;
	}
	public String getPor_writer() {
		return por_writer;
	}
	public void setPor_writer(String por_writer) {
		this.por_writer = por_writer;
	}
	public String getPor_subtitle() {
		return por_subtitle;
	}
	public void setPor_subtitle(String por_subtitle) {
		this.por_subtitle = por_subtitle;
	}
	public String getPor_category() {
		return por_category;
	}
	public void setPor_category(String por_category) {
		this.por_category = por_category;
	}

	
	public PortfolioVO toPortfolioVO() {
		PortfolioVO portfolio = new PortfolioVO();
		
		portfolio.setPor_title(por_title);
		portfolio.setPor_content(por_content);
		portfolio.setPor_writer(por_writer);
		portfolio.setPor_subtitle(por_subtitle);
		portfolio.setPor_category(por_category);
		
		
		
		return portfolio;
	}

	

}
