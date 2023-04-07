package com.customer.tracker.dao;

import java.util.List;

import com.customer.tracker.entity.Customer;

public interface CustomerDao {
	public List<Customer> getCustomers();
	public void saveCustomer(Customer customer);
	public Customer getCustomer(int customerId);
}
