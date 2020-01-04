package com.customer.support.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.customer.support.model.Ticket;
import com.customer.support.model.User;
import com.customer.support.service.UserService;

@Controller
public class HomeCustController {
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/")
	public ModelAndView home() {
		List<Ticket> ticketList=userService.listTickets();
		ModelAndView mv=new ModelAndView("home.jsp");
		mv.addObject("ticketList", ticketList);
		return mv;
	}
	
	@RequestMapping("/login")
	public String loginPage() {
		return "loginForm.jsp";
	}
	
	@RequestMapping("/regForm")
	public String registerPage() {
		return "regForm.jsp";
	}
	
	@RequestMapping("/logout-success")
	public String logoutPage() {
		return "logoutPage.jsp";
	}
	
	@RequestMapping("/ticket-form")
	public String ticketForm() {
		return "ticketForm.jsp";
	}
	
	@RequestMapping("/register")
	public String register(User user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		userService.save(user);
		return "registeredPage.jsp";
	}
	
	@RequestMapping("/saveTicket")
	public ModelAndView saveTicket(Ticket ticket) {
		Ticket ticketObj=userService.saveTicket(ticket);
		ModelAndView mv=new ModelAndView("ticketCreated.jsp");
		mv.addObject("ticketObj",ticketObj);
		return mv;
	}
	
}
