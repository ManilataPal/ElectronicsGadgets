package com.niit.electronics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ElectronicsController {

	//display of index page '/' is used to redirect index or home page
	@RequestMapping(value={"/","/index"})
	public String homePage()
	{
		return "index";
	}
	
}
