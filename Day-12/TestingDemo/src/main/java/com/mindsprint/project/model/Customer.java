package com.mindsprint.project.model;

//POJO: Plain old Java Object
public class Customer {
    private int rollNo;
    private String name;
    private String address;

    //Generate Construction
    public Customer(int rollNo, String address, String name) {
        this.rollNo = rollNo;
        this.address = address;
        this.name = name;
    }

    public int getRollNo() {
        return rollNo;
    }

    public void setRollNo(int rollNo) {
        this.rollNo = rollNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
