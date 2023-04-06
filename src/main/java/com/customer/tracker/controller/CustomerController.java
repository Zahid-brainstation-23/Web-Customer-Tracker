package com.customer.tracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.customer.tracker.dao.CustomerDao;


@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	
	@Autowired
	private CustomerDao customerDaoImpl;
	
	@RequestMapping("/list")
	public String getCustomerList(Model model) {
		model.addAttribute("customers",customerDaoImpl.getCustomers());
		return "list-customers";
	}
	
}
