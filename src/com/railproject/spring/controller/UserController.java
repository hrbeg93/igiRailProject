package com.railproject.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.railproject.spring.entity.BookTicket;
import com.railproject.spring.entity.News;
import com.railproject.spring.entity.Train;
import com.railproject.spring.entity.Users;
import com.railproject.spring.service.AdminService;
import com.railproject.spring.service.TrainService;
import com.railproject.spring.service.UserService;

@Controller
@RequestMapping("/userPanel")
public class UserController {

	@Autowired
	private UserService userService;
	 @Autowired 
	  private TrainService trainService;
	 
	 @Autowired 
	  private AdminService adminService;
	
	

	@RequestMapping("/registerUser")
	public String registerUser(@ModelAttribute ("users") Users theUser) {
		
		userService.registerUser(theUser);
		
		return "redirect:/";
	}
	
	@RequestMapping("/userLogin")
	public String loginUser(@ModelAttribute ("users") Users theUser, Model theModel) {
		BookTicket bookTicket = new BookTicket();
		theModel.addAttribute("ticketBook", bookTicket);
		Train theNewTrain = new Train();
		theModel.addAttribute("train", theNewTrain);
		System.out.println("user login page" + theUser.getEmail());
		if(theUser.getEmail() !=null && theUser.getPass()!=null) {
			
		Users tempUser =	userService.loginUser(theUser);
		theModel.addAttribute("user",tempUser);
		if(tempUser!=null) {
			
			return "user/user-dashboard";}
			
		 else { 
			 return "redirect:/";
			 }
			 
	}
		else {
		return "redirect:/";
		}
	}

	
	@RequestMapping("/searchTrain")
	public String searchTrain(@ModelAttribute("train") Train theTrain, Model theModel) {
		System.out.println("the coming value= "+theTrain.getTrainName());
		/*
		 * String train_name=theTrain.getTrainName();
		 * System.out.println("the coming value= "+train_name);
		 */
		List<Train> tempTrain = trainService.searchTrain(theTrain);
		System.out.println("the coming value= "+tempTrain);
		theModel.addAttribute("train",tempTrain);
		return "user/user-train-list" ;
	}
	
	@RequestMapping("/bookTicketForm")
	public String showBookTicketForm(@ModelAttribute ("ticketBook") BookTicket theTicket,@RequestParam("trainId") int theId, Model theModel) {
		
		/*
		 * Users tempUser = userService.loginUser(theUser);
		 * System.out.println("login user"+tempUser);
		 * theModel.addAttribute("user",tempUser);
		 * 
		 * BookTicket bookTicket = new BookTicket();
		 * theModel.addAttribute("ticketBook",bookTicket); Train theTrain =
		 * adminService.getTrainForUpdate(theId);
		 * 
		 * 
		 * //set model to pre populate the form theModel.addAttribute("myTrain",
		 * theTrain);
		 * 
		 * 
		 * return "user/user_book_ticket_form" ;
		 */	
		/*
		 * Train theTrain = adminService.getTrainForUpdate(theId);
		 * theModel.addAttribute("ticketBook",bookTicket);
		 */ 
		Train theTrain = adminService.getTrainForUpdate(theId);
		theModel.addAttribute("myTrain",theTrain);
	return "user/user_book_ticket_form";	
	}
	
	
	
	  @RequestMapping("/bookTicketAction") 
	  public String bookTicket(@ModelAttribute ("ticketBook") BookTicket theTicket,Model theModel) { 
		  Train bookTicket = new Train();
		  
		  
		/* theModel.addAttribute("ticketBook", bookTicket); */
		  userService.bookTicket(theTicket);
		  
		  
		  
	    return "user/user-ticket-payment";
	
	  }
}
