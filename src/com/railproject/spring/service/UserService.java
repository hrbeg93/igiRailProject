package com.railproject.spring.service;

import org.springframework.stereotype.Service;

import com.railproject.spring.entity.BookTicket;
import com.railproject.spring.entity.Users;


public interface UserService {

	void registerUser(Users theUser);

	Users loginUser(Users theUser);

	void bookTicket(BookTicket theTicket);

}
