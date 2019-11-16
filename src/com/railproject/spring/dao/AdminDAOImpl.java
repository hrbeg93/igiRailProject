package com.railproject.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.railproject.spring.entity.Admin;
import com.railproject.spring.entity.News;
import com.railproject.spring.entity.Train;
import com.railproject.spring.entity.Users;
@Repository
public class AdminDAOImpl implements AdminDAO {


	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Admin loginAdmin(Admin theAdmin) {
		// get session
				Session session = sessionFactory.getCurrentSession();
				
				// generate query
				String hql = "from Admin as u where u.adminName='"+theAdmin.getAdminName() +"' and u.adminPass='" +theAdmin.getAdminPass()+"'";
				
				Query query = session.createQuery(hql);
				
				theAdmin = (Admin) query.uniqueResult();
				
		return theAdmin;
	}

	@Override
	public void addNewTrain(Train theTrain) {
		// TODO Auto-generated method stub
		//get current session
				Session session = sessionFactory.getCurrentSession();
				
				// register user to database
				session.saveOrUpdate(theTrain);
	}

	@Override
	public List<Train> viewAllTrain() {
			Session currentSession = sessionFactory.getCurrentSession();
		
		// create query for sorting
		Query<Train> theQuery = currentSession.createQuery("from Train", Train.class);
		
		// execute query and get the result
		List<Train> theTrain = theQuery.getResultList();
		
		
		return theTrain;
		
	}

	@Override
	public void deleteTrain(int theTrainId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		// dlete the train using primary key
		Query theQuery= currentSession.createQuery("delete from Train where id=:trainId");
		theQuery.setParameter("trainId", theTrainId);
		theQuery.executeUpdate();
		
	}

	@Override
	public Train getTrainForUpdate(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Train theTrain = currentSession.get(Train.class,  theId);
		
		
		return theTrain;
	}

	@Override
	public void postNews(News theNews) {
		Session session = sessionFactory.getCurrentSession();
		
		// register user to database
		session.saveOrUpdate(theNews);
		
	}

	@Override
	public List<News> getAllNews() {
	Session currentSession = sessionFactory.getCurrentSession();
	
		// create query for sorting
		Query<News> theQuery = currentSession.createQuery("from News order by newsDetail ", News.class);
		theQuery.setFirstResult(0);
		theQuery.setMaxResults(5);
		// execute query and get the result
		List<News> theNews = theQuery.getResultList();
		
		System.out.println("PRinting List" +theNews);
		return theNews;
	}

}
