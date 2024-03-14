-- All  the questions and the answers for the tables we have created
-- Q. Find the solution from the database you have created with the Tables: Salesman, Customer, Orders

-- Queries
-- 1. List of rating followed by the name of each customer in Surat.
select RATING, CNAME from Customer where CITY="SURAT";
-- Output
-- +--------+---------+
-- | RATING | CNAME   |
-- +--------+---------+
-- |    200 | Lalit   |
-- |    400 | Chinmay |
-- +--------+---------+

-- 2. List of all the orders for more than Rs. 1000.
select * from Orders where AMOUNT > 1000;
-- Output
-- +------+---------+------------+------+------+
-- | ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
-- +------+---------+------------+------+------+
-- | 3002 | 1800.21 | 2021-03-01 | 2019 | 1004 |
-- | 3005 | 1650.54 | 2021-03-01 | 2018 | 1002 |
-- | 3006 | 1808.61 | 2021-03-01 | 2016 | 1005 |
-- | 3009 | 1719.32 | 2021-04-10 | 2013 | 1008 |
-- | 3008 | 7433.00 | 2021-04-11 | 2020 | 1005 |
-- | 3010 | 3108.59 | 2021-04-11 | 2012 | 1002 |
-- | 3011 | 8981.88 | 2021-04-11 | 2011 | 1008 |
-- +------+---------+------------+------+------+

-- List of names and cities of all salesman in London with the commission above 10% 
select SNUM, CITY from Salesman where COMISSION > 10;
-- Output
-- +------+----------+
-- | SNUM | CITY     |
-- +------+----------+
-- | 1001 | LONDON   |
-- | 1003 | MUMBAI   |
-- | 1004 | NEW YORK |
-- | 1005 | BARODA   |
-- | 1006 | SPAIN    |
-- +------+----------+

-- 3. 