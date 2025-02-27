package com.mindsprint.project.dao;

import com.mindsprint.project.model.Customer;

import java.util.List;

public interface CustomerDAO {

    public Customer addNewCustomer(Customer customer);
    public Customer getCustomer(int id);
    public List<Customer> getAllCustomer();
    public boolean deleteCustomer(int id);
    public boolean updateCustomer(int id, String address);
}
