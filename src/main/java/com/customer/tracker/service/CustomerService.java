package com.customer.tracker.service;

import java.util.List;

import com.customer.tracker.entity.Customer;

public interface CustomerService {
	public List<Customer> getCustomers();
	public void saveCustomer(Customer customer);
	public Customer getCustomer(int customerId);
	public void deleteCustomer(Customer customer);
}
