package com.railproject.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.railproject.spring.entity.Train;
@Repository
public class TrainDAOImpl implements TrainDAO {

	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public List<Train> searchTrain(Train theTrain) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		/*
		 * Query<Train> theQuery =
		 * currentSession.createQuery("from Train where trainName=:tname  ",
		 * Train.class);
		 * 
		 * System.out.println(theQuery); theQuery.setParameter("tname",
		 * theTrain.getTrainName());
		 */
		System.out.println(theTrain.getTrainStart());
		Query<Train> theQuery = currentSession.createQuery("from Train where trainStart=:tstart and trainEnd=:tend and"
				+ " trainDate=:tdate and trainClass=:tclass  ", Train.class);
		
		System.out.println(theQuery);
		theQuery.setParameter("tstart", theTrain.getTrainStart());
		 theQuery.setParameter("tend", theTrain.getTrainEnd()); 
		
		  theQuery.setParameter("tdate", theTrain.getTrainDate());
		  theQuery.setParameter("tclass", theTrain.getTrainClass());
		 
		
		List<Train> trains = theQuery.getResultList();
		System.out.println(trains);
		return trains;
	}

}
