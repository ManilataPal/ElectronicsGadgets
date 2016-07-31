package com.niit.electronics.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.electronics.model.User;
import com.niit.electronics.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	/*@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView loginUser(@ModelAttribute UserDetails userDetails){
	userDAO.saveOrUpdate(userDetails);
	ModelAndView mv = new ModelAndView("/index");
	mv.addObject("successMessage", "You are successfully logged in");
	return mv;
	 
	}*/
	
	
	 @RequestMapping(value = "/signup", method = RequestMethod.GET)
	  public String employee(@ModelAttribute("adduser")User user) {
	    return "signup";
	   }
	    
	  @RequestMapping(value = "/addUser", method = RequestMethod.POST)
	  public String addEmployee(@ModelAttribute("adduser")User user, ModelMap model) {
	    userService.addUser(user);
	     return "login";
	   }
	}

