package com.niit.electronics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SamsungController {

	@RequestMapping(value="/Samsung")
	public String samsungPage()
	{
		return "samsung_mobile";
	}
}
