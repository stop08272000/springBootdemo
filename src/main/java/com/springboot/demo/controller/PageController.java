package com.springboot.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.demo.model.WorkMessages;
import com.springboot.demo.service.WorkMessagesService;

@Controller
public class PageController {
	
	@Autowired
	private WorkMessagesService service;
	
	@GetMapping("/")
	public String home() {
		return "index";
	}
	
	
	@GetMapping("/about")
	public String aboutPage() {
		return "messages/about";
	}
	
	@GetMapping("/addMessage")
	public ModelAndView addMessagePage(ModelAndView mav) {
		
		mav.setViewName("messages/addMessage");
		
		WorkMessages msg = new WorkMessages();
		
		WorkMessages lastestMsg = service.getLastest();
		
		mav.getModel().put("workMessages", msg);
		mav.getModel().put("lastestMessage", lastestMsg);
		
		return mav;
	}
	@GetMapping("/viewMessages")
	public ModelAndView viewMessagePage(ModelAndView mav, @RequestParam(name="p",defaultValue = "1") Integer pageNumber) {
		mav.setViewName("messages/viewMessages");
		
		Page<WorkMessages> page =service.findByPage(pageNumber);
		
		mav.getModel().put("page",page);
		return mav;
	}
	@GetMapping("/ajaxMessage")
	public ModelAndView viewAjax(ModelAndView mav) {
		mav.setViewName("messages/ajaxPage");
		return mav;
	}
	
	@GetMapping("/addBooking")
	public String home1() {
		return "messages/addBooking";
	}
	
}
