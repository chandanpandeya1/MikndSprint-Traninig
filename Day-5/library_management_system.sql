create database lbm;
use lbm;

-- one member can have multiple borrows of one book

CREATE TABLE Book
(
  Book_Id INT NOT NULL,
  Title VARCHAR(255) NOT NULL,
  Author VARCHAR(255) NOT NULL,
  PRIMARY KEY (Book_Id)
);

CREATE TABLE Member
(
  Name VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  Member_ID INT NOT NULL,
  PRIMARY KEY (Member_ID)
);

CREATE TABLE borrow
(
  borrow_ID INT NOT NULL,
  BorrowDate DATE NOT NULL,
  ReturnDate DATE NOT NULL,
  Book_Id INT NOT NULL,
  Member_ID INT NOT NULL,
  PRIMARY KEY (borrow_ID),
  FOREIGN KEY (Book_Id) REFERENCES Book(Book_Id),
  FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID)
);