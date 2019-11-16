package com.railproject.spring.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.railproject.spring.entity.Admin;
import com.railproject.spring.entity.News;
import com.railproject.spring.entity.Train;
import com.railproject.spring.entity.Users;
import com.railproject.spring.service.AdminService;

@Controller
@RequestMapping("/adminPanel")
public class AdminController {

	
	@Autowired
	private AdminService adminService;
	


	
	@RequestMapping("/adminLogin")
	public String loginAdmin(@ModelAttribute ("admin") Admin theAdmin, Model theModel) {
		
	Train theNewTrain = new Train();
	theModel.addAttribute("newTrain", theNewTrain);
	
	News theNews = new News();
	theModel.addAttribute("newsModel", theNews);
	
		Admin newAdmin = new Admin();
		theModel.addAttribute("admin",newAdmin);
		System.out.println("user login page" + theAdmin.getAdminName());
		if(theAdmin.getAdminName()!=null && theAdmin.getAdminPass()!=null) {
			
		Admin tempAdmin =	adminService.loginAdmin(theAdmin);
			
		if(tempAdmin!=null) {
			return "admin/admin-dashboard";}
			
		 else { 
			 return "homepage";
			 }
			 
	}
		else {
		return "homepage";
		}
	}
	
	
	@RequestMapping("/addNewTrain")
	public String addNewTrain(@ModelAttribute ("newTrain") Train theTrain) {
		
		adminService.addNewTrain(theTrain);
		
		
		return "admin/admin-dashboard";
	}
	
	
	@RequestMapping("/viewAllTrain")
	public String viewALLTrain(Model theModel) {
		System.out.println("ajax is working");
		Train theNewTrain = new Train();
		theModel.addAttribute("newTrain", theNewTrain);
		List<Train> theTrain = adminService.viewAllTrain();
		
		theModel.addAttribute("train_list",theTrain);
		
		return "admin/admin-view-train";
	}
	
	@GetMapping("/deleteTrain")
	public String deleteTrain(@RequestParam ("trainId") int theTrainId) {
		
		adminService.deleteTrain(theTrainId);
		return "admin/admin-view-train";
	}
	
	@GetMapping("/showTrainForUpdate")
	public String showFormForUpdate(@RequestParam("trainId") int theId, Model theModel) {
		
		//get the customer from service
		Train theTrain = adminService.getTrainForUpdate(theId);
		
		
		//set model to pre populate the form
		theModel.addAttribute("newTrain", theTrain);
		return "admin/admin-update-train";
	}
	
	
	@RequestMapping("/postNews")
	public String postNews(@Valid @ModelAttribute ("newsModel") News theNews,Model theModel, BindingResult results) {

		if(results.hasErrors())
		{
			System.out.println("error in binding");
		}
		
		News newsObj = new News();
		System.out.println("date format= "+theNews.getNewsFile());
		Train theNewTrain = new Train();
		theModel.addAttribute("newTrain", theNewTrain);
		
		adminService.postNews(theNews);
		
		
		return "admin/admin-dashboard";
	}
	
	
	  @InitBinder public void initBinder(WebDataBinder binder) { 
			System.out.println("initbinder");
		  SimpleDateFormat 	  sdf = new SimpleDateFormat("yyyy-MM-dd"); 
		/* sdf.setLenient(true); */ 
		  
		  binder.registerCustomEditor(Date.class,"testDate", new CustomDateEditor(sdf,true)); }
	 
	
	
}
