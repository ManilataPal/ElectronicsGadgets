package com.niit.electronics.serviceImpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.electronics.dao.UserDAO;
import com.niit.electronics.model.User;
import com.niit.electronics.service.UserService;

@Service
@Transactional
@EnableTransactionManagement
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	public void addUser(User user) {
	
		userDAO.addUser(user);
	}
	

}
