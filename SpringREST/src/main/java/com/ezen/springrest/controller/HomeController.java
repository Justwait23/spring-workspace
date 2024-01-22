package com.ezen.springrest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ezen.springrest.service.FruitService;

@Controller
public class HomeController {
	
	@Autowired
	FruitService fruitService;
	
	@GetMapping("/")
	public String home() {
		
		return "home";
	}
	
	@GetMapping("/quiz")
	public String quiz() {
		
		return "quiz";
	}
	
	@GetMapping("/fruit")
	public void list(Model model) {
		
		fruitService.getFruitList(model);
	}
	
//	@ResponseBody
//	@GetMapping(value = "/fruit", produces = "text/plain; charset=UTF-8")
//	public String fruit() {
//		// 원래 의미 : /WEB-INF/views/fruit.jsp로 포워드 하겠다
//		// @ResponseBody를 붙인 후 : "fruit"을 응답하겠다 (데이터를 응답)
//		return "fruit";
//	}
}
