package com.railproject.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.railproject.spring.entity.Admin;
import com.railproject.spring.entity.News;
import com.railproject.spring.entity.Train;
import com.railproject.spring.entity.Users;
import com.railproject.spring.service.AdminService;
import com.railproject.spring.service.TrainService;
import com.railproject.spring.service.UserService;

@Controller
public class WebController {

	@Autowired
	private TrainService trainService;
	@Autowired
	private AdminService adminService;

	@RequestMapping("/")
	public String homepage(Model theModel) {
		Train theTrain = new Train();
		theModel.addAttribute("train", theTrain);
		Admin theAdmin = new Admin();
		theModel.addAttribute("admin", theAdmin);
		Users theUser = new Users();
		theModel.addAttribute("users", theUser);

		/*
		 * News theNews = new News(); theModel.addAttribute("newsModel", theNews);
		 */

		
		  List<News> tempNews = adminService.getAllNews();
		
		  System.out.println("return call" + tempNews);
		  theModel.addAttribute("newsModel", tempNews);
		 
		 

		return "homepage";
	}
	/*
	 * @RequestMapping("/registerUser") public String registerUser(@ModelAttribute
	 * ("users") Users theUser) {
	 * 
	 * userService.registerUser(theUser);
	 * 
	 * return "redirect:/"; }
	 */

	/*
	 * @RequestMapping("/userLogin") public String loginUser(@ModelAttribute
	 * ("users") Users theUser) { System.out.println("user login page" +
	 * theUser.getEmail()); if(theUser.getEmail() !=null && theUser.getPass()!=null)
	 * {
	 * 
	 * Users tempUser = userService.loginUser(theUser);
	 * 
	 * if(tempUser!=null) { return "user/user-dashboard";}
	 * 
	 * else { return "redirect:/"; }
	 * 
	 * } else { return "redirect:/"; } }
	 */
	@RequestMapping("/searchTrain")
	public String searchTrain(@ModelAttribute("train") Train theTrain, Model theModel) {
		System.out.println("the coming value= " + theTrain.getTrainName());

		News theNews = new News();
		theModel.addAttribute("newsModel", theNews);
		/*
		 * String train_name=theTrain.getTrainName();
		 * System.out.println("the coming value= "+train_name);
		 */
		List<Train> tempTrain = trainService.searchTrain(theTrain);
		System.out.println("the coming value= " + tempTrain);
		theModel.addAttribute("train", tempTrain);
		return "train-list";
	}

	/*
	 * @RequestMapping("/list-train") public String
	 * trainList(@ModelAttribute("train") Train theTrain, Model theModel) {
	 * 
	 * return "redirect:/train-list" ; }
	 */
}
