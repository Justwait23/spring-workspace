package com.ezen.springmvc.controller;

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

import com.ezen.springmvc.model.Coffee;
import com.ezen.springmvc.model.Cook;
import com.ezen.springmvc.model.Department;

import commons.Calculator;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	// getLogger()할때 클래스 객체를 전달해야한다
	private static Logger log = LogManager.getLogger(HomeController.class);
	
	@Autowired
	Cook cook;
	
	@Autowired
	Calculator calculator;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	//					/ 주소로 들어오면 리퀘스트 겟 방식으로 처리를 해주겠다
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		Department dept = new Department();
		Coffee coffee = new Coffee();
		
		// @NonNull은 필드에 null을 넣으려는 경우 익셉션을 발생시켜준다
		try {
			coffee.setCoffee_id(null);			
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
		
		log.info(dept);
		log.info(coffee);
		
		int a = calculator.diff(10, 13);
		
		log.fatal("Welcome to HomeController!!");
		log.error("Welcome to HomeController!!");
		log.warn("Welcome to HomeController!!");
		log.info("Welcome to HomeController!!");
		log.debug("Welcome to HomeController!!");
		log.trace("Welcome to HomeController!!");
		
		
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("cook", cook);
		
		return "home";
	}
}
