package com.railproject.spring.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.railproject.spring.entity.BookTicket;
import com.railproject.spring.entity.Users;
@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public void registerUser(Users theUser) {
		// register user
		
		//get current session
		Session session = sessionFactory.getCurrentSession();
		
		// register user to database
		session.saveOrUpdate(theUser);

	}


	@Override
	public Users loginUser(Users theUser) {
		// TODO Auto-generated method stub
		
		// get session
		Session session = sessionFactory.getCurrentSession();
		// generate query
		String hql = "from Users as u where u.email='"+theUser.getEmail() +"' and u.pass='" +theUser.getPass()+"'";
		
		Query query = session.createQuery(hql);
		/*
		 * query.setParameter(0, Users.getEmail()); 
		 * query.setParameter(1, Users.getPass());
		 */
		theUser = (Users) query.uniqueResult();
		
		/* session.close(); */
		return theUser;
		
	}


	@Override
	public void bookTicket(BookTicket theTicket) {
		Session session = sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(theTicket);
		
	}

}
