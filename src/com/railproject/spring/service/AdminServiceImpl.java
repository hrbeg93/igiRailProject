package com.railproject.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.railproject.spring.dao.AdminDAO;
import com.railproject.spring.entity.Admin;
import com.railproject.spring.entity.News;
import com.railproject.spring.entity.Train;
import com.railproject.spring.entity.Users;
@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAO;
	
	
	@Override
	@Transactional
	public Admin loginAdmin(Admin theAdmin) {
		// TODO Auto-generated method stub
		return adminDAO.loginAdmin(theAdmin);
	}


	@Override
	@Transactional
	public void addNewTrain(Train theTrain) {
		// TODO Auto-generated method stub
		adminDAO.addNewTrain(theTrain);
		
	}


	@Override
	@Transactional
	public List<Train> viewAllTrain() {
		// TODO Auto-generated method stub
		return adminDAO.viewAllTrain();
	}


	@Override
	@Transactional
	public void deleteTrain(int theTrainId) {
		// TODO Auto-generated method stub
		adminDAO.deleteTrain(theTrainId);
	}


	@Override
	@Transactional
	public Train getTrainForUpdate(int theId) {
		// TODO Auto-generated method stub
		return adminDAO.getTrainForUpdate(theId);
	}


	@Override
	@Transactional
	public void postNews(News theNews) {
	adminDAO.postNews(theNews);
		
	}


	@Override
	@Transactional
	public List<News> getAllNews() {
		return adminDAO.getAllNews();
	}

}
