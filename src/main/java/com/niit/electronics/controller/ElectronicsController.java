package com.niit.electronics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ElectronicsController {

	@RequestMapping(value={"/","/index"})
	public String homePage()
	{
		return "index";
	}
	
}
