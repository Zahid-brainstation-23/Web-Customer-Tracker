package com.customer.tracker.service;

import java.util.List;

import com.customer.tracker.entity.Customer;

public interface CustomerService {
	public List<Customer> getCustomers();
	public void addCustomer(Customer customer);
}
