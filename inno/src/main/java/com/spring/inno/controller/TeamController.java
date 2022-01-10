package com.spring.inno.controller;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.inno.command.SearchCriteria;

@Controller
@RequestMapping("team")
public class TeamController {

	@RequestMapping("/list")
	public ModelAndView list(SearchCriteria cri, ModelAndView mnv) throws SQLException{
		String url = "team/list";
		
//		Map<String, Object> dataMap = service.getPortfolioList(cri);
		
//		mnv.addObject("dataMap",dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}

	
}
