package com.niit.electronics.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.electronics.model.Rolls;
import com.niit.electronics.model.User;
import com.niit.electronics.service.RollsService;
import com.niit.electronics.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private RollsService rollsService;
	
	
	 @RequestMapping(value = "/signup", method = RequestMethod.GET)
	  public String employee(@ModelAttribute("adduser")User user) {
	    return "signup";
	   }
	    
	  @RequestMapping(value = "/addUser", method = RequestMethod.POST)
	  public String addEmployee(@ModelAttribute("adduser")User user, ModelMap model) {
		  Rolls rolls=new Rolls();
		  userService.addUser(user);
		  rolls.setUserId(user.getId());
		  rolls.setRolls("ROLE_USER");
		  rollsService.addRolls(rolls);
		  
	   
	     return "login";
	   }
	  
	  
	/* @RequestMapping(value="/login", method=RequestMethod.GET)
		  public String login(Model model, String error, String logout){
		  	if(error != null)
		  		model.addAttribute("error", "Your username and password is invalid");
		    if(logout != null)
		    	model.addAttribute("message", "You have been logged out successfully");
		    	return "login";
	  }
		@RequestMapping(value = {"/", "/welcome"}, method=RequestMethod.GET)
	public String welcome(Model model){
		return "index";
	}*/
	  
	/*@RequestMapping(value = "/login", method = RequestMethod.GET )
	  public String login(Model model) {
		 // model.addAttribute("msg","Please Enter Your Login details ");
		  return "login";
	  }
	  
	  @RequestMapping(value = "/submit", method = RequestMethod.POST)
	  public String submit(Model model, @ModelAttribute("user") User user){
		  if(user != null && user.getUsername() != null & user.getPassword() != null ){
			  if(user.getUsername().equals("admin") && user.getPassword().equals("admin")){
				  model.addAttribute("msg","Welcome" +user.getUsername());
				  return "redirect:/successLogin";
				  
			  }
			  else{
				  model.addAttribute("error","Invalid Details");
				  return "login";
				   }
			  }
		return "redirect:/login";
		  }*/
	  @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public String ogin(Map<String, Object> model) {
	        User user = new User();
	        model.put("userForm", user);
	        return "login";
	    }
	  @RequestMapping(value = "/submit", method = RequestMethod.POST)
	    public String doLogin(@Valid @ModelAttribute("userForm") User userForm,
	            BindingResult result, Map<String, Object> model) {
	 
	        if (result.hasErrors()) {
	            return "login";
	        }
	 
	        return "successLogin";
	    }
	  
	  
	  
	  
	  }



	
