package com.niit.electronics.serviceImpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.electronics.dao.RollsDAO;
import com.niit.electronics.model.Rolls;
import com.niit.electronics.service.RollsService;

@Service
@Transactional
@EnableTransactionManagement
public class RollsServiceImpl implements RollsService {
	@Autowired
	private RollsDAO rollsDAO;
	
	public void addRolls(Rolls rolls) {
		rollsDAO.addRolls(rolls);
		
	}
	

}
