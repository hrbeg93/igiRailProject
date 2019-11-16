package com.railproject.spring.dao;

import java.util.List;

import com.railproject.spring.entity.Train;

public interface TrainDAO {

	List<Train> searchTrain(Train theTrain);

	

}
