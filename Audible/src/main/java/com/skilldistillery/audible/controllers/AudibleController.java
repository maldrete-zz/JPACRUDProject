package com.skilldistillery.audible.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AudibleController {
	
	@RequestMapping(path = {"/", "home.do"}, method = RequestMethod.GET )
	public String home() {
		return "home";
	}

}
