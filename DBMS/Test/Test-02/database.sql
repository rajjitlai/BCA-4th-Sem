create database Test;
use Test;

-- Table - Student_tbl
create table Student_tbl(S_ID int(10), S_NAME varchar(20), S_CITY varchar(20), C_ID int(10), MARKS int(5));

insert into Student_tbl values(1101, "Riya", "Delhi", 103, 160);
insert into Student_tbl values(1102, "Aarti", "Bangalore", 104, 180);
insert into Student_tbl values(1103, "Emin", "Kolkata", 101, 250);
insert into Student_tbl values(1104, "Rahul", "Bangalore", 101, 300);
insert into Student_tbl values(1105, "Priya", "Bangalore", 103, 260);

-- Table - Course_tbl
create table Course_tbl(C_ID int(10), C_NAME varchar(10));

insert into Course_tbl values(101, "BCom");
insert into Course_tbl values(102, "BSc");
insert into Course_tbl values(103, "BBA");
insert into Course_tbl values(104, "B.Tech");
insert into Course_tbl values(105, "BCom");
