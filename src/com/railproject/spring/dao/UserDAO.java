package com.railproject.spring.dao;

import org.springframework.stereotype.Repository;

import com.railproject.spring.entity.BookTicket;
import com.railproject.spring.entity.Users;


public interface UserDAO {

	void registerUser(Users theUser);

	Users loginUser(Users theUser);

	void bookTicket(BookTicket theTicket);

}
