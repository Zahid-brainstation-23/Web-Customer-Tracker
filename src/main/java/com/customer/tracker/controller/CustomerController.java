package com.customer.tracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.customer.tracker.entity.Customer;
import com.customer.tracker.service.CustomerService;


@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/list")
	public String getCustomerList(Model model) {
		model.addAttribute("customers",customerService.getCustomers());
		return "list-customers";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer",customer);
		return "customer-form";
	}
	
}
