package com.mindsprint;

import com.mindsprint.project.model.Customer;
import com.mindsprint.project.service.CustomerService;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.util.List;

public class CustomerTest {
    static CustomerService service;

    @BeforeAll
    public static void setUp(){
        service = new CustomerService();

    }

    @AfterAll
    public static void tearDown(){
        service=null;
    }

    @Test
    public void addCustomer(){
        Customer result = service.addNewCustomer(new Customer(4, "Delhi", "Kohli"));
        Assertions.assertEquals("Kohli", result.getName());
    }

    @Test
    public void getAll(){
        List<Customer> list = service.getAllCustomer();
        Assertions.assertEquals(3,list.size());
    }

}
