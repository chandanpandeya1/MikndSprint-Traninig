package org.example;

import org.junit.jupiter.api.*;

public class SampleTest2 {

    @BeforeAll
    public static void beforeAll4(){
        System.out.println("Before All 4 Test Cases");
    }
    @BeforeAll
    public static void beforeAll(){
        System.out.println("Before All Test Cases");
    }

    @BeforeAll
    public static void beforeAll2(){
        System.out.println("Before All 2 Test Cases");
    }

    @AfterAll
    public static void afterAll(){
        System.out.println("After All Test Cases");
    }

    @BeforeEach
    public void setUp(){
        System.out.println("DB Connection");
    }

    @AfterEach
    public void tearDom(){
        System.out.println("DB dis-Connected");
    }

    @Test
    public void myTest1(){
        System.out.println("Test1 Executed");
    }

    @Test
    public void myTest2(){
        System.out.println("Test2 Executed");
    }

    @BeforeAll
    public static void beforeAll3(){
        System.out.println("Before All 3 Test Cases");
    }
}
