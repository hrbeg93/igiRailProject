package com.railproject.spring.service;

import java.util.List;

import com.railproject.spring.entity.Train;

public interface TrainService {

	List<Train> searchTrain(Train theTrain);

}
