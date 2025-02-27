package org.example;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class SampleTest {

    public int add(int num1, int num2){
        return num1+num2;
    }
    @Test
    public void demoTest(){
        System.out.println("Test Executed");
        int expected = 10;
        int actual =add(4,6);
        Assertions.assertEquals(expected, actual);
    }
}
