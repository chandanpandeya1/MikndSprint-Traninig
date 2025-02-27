package com.mindsprint.project.service;

import com.mindsprint.project.dao.CustomerDAO;
import com.mindsprint.project.dao.CustomerDaoImpl;
import com.mindsprint.project.model.Customer;

import java.util.List;

public class CustomerService {

    private CustomerDAO dao;

    public CustomerService(){
        dao=new CustomerDaoImpl();
    }
    public Customer addNewCustomer(Customer customer){
        return dao.addNewCustomer(customer);
    }
//    public Customer getCustomer(int id){
//
//    }

    public List<Customer> getAllCustomer(){
        return dao.getAllCustomer();
    }
//    public boolean deleteCustomer(int id){
//
//    }
//    public boolean updateCustomer(int id, String address){
//
//    }
}
