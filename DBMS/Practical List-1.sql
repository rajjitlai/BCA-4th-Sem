-- 1. Produce the order no, amount, and date of all orders
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

-- 2. Give all the information about all the customers with salesman number 1001
select * from Customer where SNUM = 1001;
-- Output
-- +------+--------+--------+--------+------+
-- | CNUM | CNAME  | CITY   | RATING | SNUM |
-- +------+--------+--------+--------+------+
-- | 2001 | Harsh  | London |    100 | 1001 |
-- | 2008 | Chirag | London |    100 | 1001 |
-- +------+--------+--------+--------+------+

-- 3. Display the following information in the order of CITY, SNAME, Snum, and  Commission

--Output

-- 4. List of rating followed by the name of each customer in Surat
select RATING, CNAME from Customer where CITY="SURAT";
-- Output
-- +--------+---------+
-- | RATING | CNAME   |
-- +--------+---------+
-- |    200 | Lalit   |
-- |    400 | Chinmay |
-- +--------+---------+

-- 5. List of SNUM of all salesman with order in order table without any duplicates.

--Output

-- 6. List of all orders for more than Rs. 1000. List of names and cities of all salesman in London with commission above 10%. List all customers excluding those with rating <= 100 unless the are located in Located in London.

--Output

-- 7. List all orders for more than Rs. 1000 except the orders of snum<1006 of 10/03/21.

--Output

-- 8. List all orders taken on October 3rd or 4th or 6th, 2028.

--Output

-- 9. List all customers whose names begins with letter 'A'
select * from Customer where CNAME like 'A%';
--Output
-- Empty set (0.00 sec)

-- 10. List all customers whose names begins with letter 'A' to 'G'
select * from Customer where left(CNAME, 1) between 'A' and 'G';
--Output
-- +------+---------+--------+--------+------+
-- | CNUM | CNAME   | CITY   | RATING | SNUM |
-- +------+---------+--------+--------+------+
-- | 2002 | Gita    | Rome   |    200 | 1003 |
-- | 2004 | Govind  | Bombay |    300 | 1002 |
-- | 2008 | Chirag  | London |    100 | 1001 |
-- | 2006 | Chinmay | Surat  |    400 | 1007 |
-- +------+---------+--------+--------+------+

-- 11. List all orders with zero or NULL amount.

--Output