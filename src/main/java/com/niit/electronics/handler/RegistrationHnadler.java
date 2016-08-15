package com.niit.electronics.handler;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;

import com.niit.electronics.model.User;

public class RegistrationHnadler {
	
	public User initFlow(){
		return new User();
	}

	public String validateDetails(User user, MessageContext messageContext){
		String status = "success";
		if(user.getId() == 0){
			messageContext.addMessage(new MessageBuilder().error().source("id").defaultText("UserId cannot be empty").build());
			status = "failure";
			
		}
		if(user.getUsername().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(user).defaultText("name cannot be empty").build());
			status = "failure";
		}
		if(user.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(user).defaultText("email cannot be empty").build());
			status = "failure";
		}
		if(user.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(user).defaultText("password cannot be empty").build());
			status = "failure";
		}
		if(user.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(user).defaultText("address cannot be empty").build());
			status = "failure";
		}
		return status;
	}
}
