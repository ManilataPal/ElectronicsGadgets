package com.niit.electronics.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.electronics.model.Login;
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
		  user.setActive(true);
		  userService.addUser(user);
		  rolls.setUserId(user.getId());
		  rolls.setRolls("ROLE_USER");
		  rollsService.addRolls(rolls);
		  
	   
	     return "login";
	   }
	  
	  

	  @RequestMapping(value = "/login")
	    public ModelAndView login(@RequestParam(value="error",required=false)String error,@RequestParam(value="logout",required=false)String logout,Model model) {
	        if (error != null){
	        	model.addAttribute("error","Invalid username and password");
	             }
	     if (logout != null){
	    	 model.addAttribute("msg", "You have been logged out successfully");
	     }
	     return new ModelAndView("login");
	    }
	  @RequestMapping(value = "/login", method = RequestMethod.POST)
	    public String doLogin(@Valid @ModelAttribute("validate") Login validate,
	            BindingResult result, Map<String, Object>model) {
		  	
	        if (result.hasErrors()) {
	            return "login";
	        }
	 
	        return "login";
	    }
	  
	  
	  
	  
	  }



	
