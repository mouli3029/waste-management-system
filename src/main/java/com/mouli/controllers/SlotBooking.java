package com.mouli.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mouli.beans.Booking;
import com.mouli.repos.SlotBookingRepo;

@Controller
public class SlotBooking {
	
	@Autowired
	private SlotBookingRepo slotbookingrepo;
	@GetMapping("/slotbooking")
	public String slotBooking() {
		return "slotbooking";
	}
	
	
	@PostMapping("/slotbooking")
	public String slotbooking(@ModelAttribute("newslot") Booking booking,BindingResult result,Model model) {
		if(result.hasErrors()) {
			model.addAttribute("msg","Please try again");
			return "slotbooking";
		}
		slotbookingrepo.save(booking);
		return "slotbooking";
	}
}
