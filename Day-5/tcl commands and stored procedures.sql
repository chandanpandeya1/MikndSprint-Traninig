create database transaction;
use transaction;

CREATE TABLE Accounts (
 account_id VARCHAR(10) PRIMARY KEY,
 account_name VARCHAR(100),
 balance DECIMAL(10, 2)
);

INSERT INTO Accounts (account_id, account_name, balance) 
VALUES
('A001', 'Alice', 1000.00),
('A002', 'Bob', 1500.00),
('A003', 'Charlie', 2000.00);

select * from accounts;

begin;
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A001';
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A002';
commit;

select * from accounts;

-- rollback

begin;
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A001';
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A002';
rollback;

-- savepoint
Begin;
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A001';
savepoint sp1;
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A002';
rollback to sp1;

commit;

select * from accounts;

-- stored procedure

DELIMITER // -- change the termination symbol
create procedure getAllAccounts() -- create the procedure
begin
select * from accounts;
end // -- last line of procedure which ends with //

DELIMITER ; -- changes the termination symbol to ;

call getAllAccounts();