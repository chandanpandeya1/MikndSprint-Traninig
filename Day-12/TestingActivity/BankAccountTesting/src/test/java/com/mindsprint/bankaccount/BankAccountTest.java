package com.mindsprint.bankaccount;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class BankAccountTest {

    private BankAccount account;

    @BeforeEach
    public void setUp() {
        account = new BankAccount(1000); // initial balance of 1000
    }

    @Test
    public void testDeposit() {
        account.deposit(500);
        assertEquals(1500, account.getBalance());
    }

    @Test
    public void testWithdraw() {
        account.withdraw(400);
        assertEquals(600, account.getBalance());
    }

    @Test
    public void testWithdrawInsufficientFunds() {
        Exception exception = assertThrows(IllegalArgumentException.class, () -> {
            account.withdraw(1500);
        });
        assertEquals("Insufficient funds", exception.getMessage());
    }

    @Test
    public void testDepositNotEquals() {
        account.deposit(500);
        assertNotEquals(1000, account.getBalance()); // Balance should not be the initial balance
    }

    @Test
    public void testGetBalance() {
        assertEquals(1000, account.getBalance());
    }
}
