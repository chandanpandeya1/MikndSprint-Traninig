show databases;

create database testdb;

use testdb;

CREATE TABLE Student
(
  sid INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone INT NOT NULL,
  email VARCHAR(255) NOT NULL,
  PRIMARY KEY (sid),
  UNIQUE (email)
);

CREATE TABLE Course
(
  cid INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  price NUMERIC(2) NOT NULL,
  description VARCHAR(255) NOT NULL,
  PRIMARY KEY (cid)
);

CREATE TABLE Enrollment
(
  Amount NUMERIC(2) NOT NULL,
  date DATE NOT NULL,
  eid INT NOT NULL,
  sid INT NOT NULL,
  cid INT NOT NULL,
  PRIMARY KEY (eid),
  FOREIGN KEY (sid) REFERENCES Student(sid),
  FOREIGN KEY (cid) REFERENCES Course(cid)
);