package com.railproject.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.railproject.spring.dao.UserDAO;
import com.railproject.spring.entity.BookTicket;
import com.railproject.spring.entity.Users;
@Service
public class UserServiceImpl implements UserService {
    
	@Autowired
	private UserDAO userDAO;
	@Override
	@Transactional
	public void registerUser(Users theUser) {
		// TODO Auto-generated method stub
		userDAO.registerUser(theUser);
	}
	@Override
	@Transactional
	public Users loginUser(Users theUser) {
		// TODO Auto-generated method stub
		return userDAO.loginUser(theUser);
	}
	@Override
	@Transactional
	public void bookTicket(BookTicket theTicket) {
		userDAO.bookTicket(theTicket);
		
	}

}
