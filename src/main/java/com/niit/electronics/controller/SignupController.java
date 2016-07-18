package com.niit.electronics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignupController {

	@RequestMapping(value="/SignUp")
	public String signupPage()
	{
		return "signup";
	}
}
