package com.mindsprint.sample;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class MainController {

    @GetMapping("/hello")
    public String getHello(){
        return "Hello From My new Springboot app";
    }
    @GetMapping("/employee")
    public Employee getEmployees(){
        return new Employee(1,"lokesh","It",4500000);
    }
}
