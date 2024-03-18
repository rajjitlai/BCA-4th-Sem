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
select SNUM, CITY from Salesman where COMMISSION > 10;
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

-- 3. List of customers excluding those rating <=100 unless they are located in London
select * from Customer where RATING > 100 or(CITY="LONDON" and RATING <= 100);
-- Output
-- +------+---------+--------+--------+------+
-- | CNUM | CNAME   | CITY   | Rating | SNUM |
-- +------+---------+--------+--------+------+
-- | 2001 | Harsh   | London |    100 | 1001 |
-- | 2002 | Gita    | Rome   |    200 | 1003 |
-- | 2003 | Lalit   | Surat  |    200 | 1002 |
-- | 2004 | Govind  | Bombay |    300 | 1002 |
-- | 2008 | Chirag  | London |    100 | 1001 |
-- | 2006 | Chinmay | Surat  |    400 | 1007 |
-- +------+---------+--------+--------+------+

-- 4. List of all orders for more than Rs 1000 except the orders of SNUM < 1006 of 10/03/21
select * from Orders where AMOUNT > 1000 and (SNUM >= 1006 or ODATE != '2021-03-10');
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

-- 5. Produce the order no, amount and date of all orders
select ONUM, AMOUNT, ODATE from Orders;
-- Output
-- +------+---------+------------+
-- | ONUM | AMOUNT  | ODATE      |
-- +------+---------+------------+
-- | 3001 |   17.78 | 2021-03-01 |
-- | 3003 |  676.91 | 2021-03-01 |
-- | 3002 | 1800.21 | 2021-03-01 |
-- | 3005 | 1650.54 | 2021-03-01 |
-- | 3006 | 1808.61 | 2021-03-01 |
-- | 3009 | 1719.32 | 2021-04-10 |
-- | 3007 |   57.57 | 2021-04-10 |
-- | 3008 | 7433.00 | 2021-04-11 |
-- | 3010 | 3108.59 | 2021-04-11 |
-- | 3011 | 8981.88 | 2021-04-11 |
-- +------+---------+------------+

-- 6. GIve all the information about all the customer with salesman 1001
select * from Customer where SNUM = 1001;
-- Output
-- +------+--------+--------+--------+------+
-- | CNUM | CNAME  | CITY   | RATING | SNUM |
-- +------+--------+--------+--------+------+
-- | 2001 | Harsh  | London |    100 | 1001 |
-- | 2008 | Chirag | London |    100 | 1001 |
-- +------+--------+--------+--------+------+

-- 7. List all the customers whose name starts with A
select * from Customer where CNAME like 'A%';
-- Output (the output will be empty because there is no customer whose name starts with A)
-- Empty set (0.00 sec)

-- 8. List all the customers whose name ends with H
select * from Customer where CNAME like '%H';
-- Output
-- +------+-------+--------+--------+------+
-- | CNUM | CNAME | CITY   | RATING | SNUM |
-- +------+-------+--------+--------+------+
-- | 2001 | Harsh | London |    100 | 1001 |
-- +------+-------+--------+--------+------+

-- 9. List all the customers whose name begins with letter A to G
select * from Customer where left(CNAME, 1) between 'A' and 'G';
-- Output
-- +------+---------+--------+--------+------+
-- | CNUM | CNAME   | CITY   | RATING | SNUM |
-- +------+---------+--------+--------+------+
-- | 2002 | Gita    | Rome   |    200 | 1003 |
-- | 2004 | Govind  | Bombay |    300 | 1002 |
-- | 2008 | Chirag  | London |    100 | 1001 |
-- | 2006 | Chinmay | Surat  |    400 | 1007 |
-- +------+---------+--------+--------+------+
