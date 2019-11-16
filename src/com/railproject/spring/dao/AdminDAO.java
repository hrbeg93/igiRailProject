package com.railproject.spring.dao;

import java.util.List;

import com.railproject.spring.entity.Admin;
import com.railproject.spring.entity.News;
import com.railproject.spring.entity.Train;

public interface AdminDAO {

	Admin loginAdmin(Admin theAdmin);

	void addNewTrain(Train theTrain);

	List<Train> viewAllTrain();

	void deleteTrain(int theTrainId);

	Train getTrainForUpdate(int theId);

	void  postNews(News theNews);

	List<News> getAllNews();

}
