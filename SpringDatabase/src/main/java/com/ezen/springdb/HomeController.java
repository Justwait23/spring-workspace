package com.ezen.springdb;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ezen.springdb.dto.EmployeeDTO;
import com.ezen.springdb.mapper.EmployeeMapper;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static Logger log = LogManager.getLogger(HomeController.class);
	
	@Autowired
	EmployeeMapper empMapper;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		for (EmployeeDTO emp : empMapper.getAll()) {
			System.out.println(emp);
		}
		
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}
