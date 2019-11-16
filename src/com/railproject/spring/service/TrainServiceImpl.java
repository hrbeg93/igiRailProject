package com.railproject.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.railproject.spring.dao.TrainDAO;
import com.railproject.spring.entity.Train;
@Service
public class TrainServiceImpl implements TrainService {

	@Autowired
	private TrainDAO trainDAO;
	
	@Override
	@Transactional
	
	public List<Train> searchTrain(Train theTrain) {
		// TODO Auto-generated method stub
		return trainDAO.searchTrain(theTrain);
	}

}
