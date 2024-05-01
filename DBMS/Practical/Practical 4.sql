Date: 18/04/2024
-- Q. Display the list of Orders where SNUM is either 1004, 1008, 1007.
select * from Orders where SNUM in (1004,1008,1007);

-- Output
-- +------+---------+------------+------+------+
-- | ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
-- +------+---------+------------+------+------+
-- | 3001 | 17.78   | 2021-03-01 | 2009 | 1007 |
-- | 3002 | 1800.21 | 2021-03-01 | 2019 | 1004 |
-- | 3007 | 57.57   | 2021-04-10 | 2017 | 1004 |
-- | 3009 | 1719.32 | 2021-04-10 | 2013 | 1008 |
-- | 3011 | 8981.88 | 2021-04-11 | 2011 | 1008 |
-- +------+---------+------------+------+------+

-- Q. Display the list of Customer whose name is ending with letter "D"
select * from Customer where CNAME like "%d";

-- Output 
-- +------+--------+--------+--------+------+
-- | CNUM | CNAME  | CITY   | RATING | SNUM |
-- +------+--------+--------+--------+------+
-- | 2004 | Govind | Bombay | 300    | 1002 |
-- +------+--------+--------+--------+------+

-- Queries before performing any sql commands
alter table Salesman modify COLUMN COMMISSION varchar(20);

-- Q.1 List of Salesman with their % of COMMISSION
update Salesman set COMMISSION = concat(COMMISSION, "%");
select * from Salesman;

-- Output
-- +------+---------+-----------+------------+
-- | SNUM | SNAME   | CITY      | COMMISSION |
-- +------+---------+-----------+------------+
-- | 1001 | RAM     | LONDON    | 14%        |
-- | 1002 | ANAND   | NEW DELHI | 10%        |
-- | 1003 | SHYAM   | MUMBAI    | 13%        |
-- | 1004 | MOTILAL | NEW YORK  | 11%        |
-- | 1005 | PIYUSH  | BARODA    | 15%        |
-- | 1006 | SEJAL   | SPAIN     | 12%        |
-- +------+---------+-----------+------------+

-- Q.2 Display the total SNUM, Averageb SNUM, MAX SNUM, MIN SNUM of Orders Table
select sum(SNUM), avg(SNUM), max(SNUM), min(SNUM) from Orders;

-- Output
-- +-----------+-----------+-----------+-----------+
-- | sum(SNUM) | avg(SNUM) | max(SNUM) | min(SNUM) |
-- +-----------+-----------+-----------+-----------+
-- | 10051     | 1005.1000 | 1008      | 1002      |
-- +-----------+-----------+-----------+-----------+

-- Q.3 Display the name of Salesman whose Customer rating is 100.
select SNAME from Salesman where SNUM in (select SNUM from Customer where RATING = 100);

-- Output
-- +-------+
-- | SNAME |
-- +-------+
-- | RAM   |
-- +-------+

-- Q.4 Display the customer number of customer whose commission is > 11
select CNAME from Customer where SNUM in (select SNUM from Salesman where COMMISSION > 11);

-- Output
-- +--------+
-- | CNAME  |
-- +--------+
-- | Harsh  |
-- | Gita   |
-- | Chirag |
-- +--------+

Date: 25/04/24

-- Q.5 Display the number of Orders for each day
select ODATE, COUNT(ODATE) as Num_Orders from Orders group by ODATE;
+------------+------------+
| ODATE      | Num_Orders |
+------------+------------+
| 2021-03-01 |          5 |
| 2021-04-10 |          2 |
| 2021-04-11 |          3 |
+------------+------------+

-- Q.6 Display the number of Orders for each day in descending Orders of the number of orders in the following format: For dd-mm-yy, there are ___ orders
select DATE_FORMAT(ODATE, "%d-%m-%y") as For_day, Count(ONUM) as No_orders from Orders group by ODATE order by No_orders desc;
+----------+-----------+
| For_day  | No_orders |
+----------+-----------+
| 01-03-21 |         5 |
| 11-04-21 |         3 |
| 10-04-21 |         2 |
+----------+-----------+

-- Q.7 Display on which date, customer "Lalit"has placed an order
-- update Orders set CNUM = 2003 where ONUM = 3003;
select ODATE from Orders where CNUM in (select CNUM from Customer where CNAME='Lalit');
-- +------------+
-- | ODATE      |
-- +------------+
-- | 2021-03-01 |
-- +------------+

-- Q.8 Display the customer number and name of the customer who has placed an order of amount 686.91
-- (Notes: add a row in a customer whose CNUM should be 2014, Name is Mohan, City is Manipur, Rating is 500, SNUM is 1006)
insert into Customer values(2014, "Mohan", "Manipur", 500, 1006);
select CNUM, CNAME from Customer where CNUM in (select CNUM from Orders where AMOUNT =  686.91);
+------+-------+
| CNUM | CNAME |
+------+-------+
| 2003 | Lalit |
+------+-------+

-- Q.9 Display the maximum amount of each day
-- (Notes: add all the rows of orders table, refer to page 25-26 of DBMS syllabus)
select ODATE, MAX(AMOUNT) as MAX_AMT from Orders group by ODATE;
-- +------------+---------+
-- | ODATE      | MAX_AMT |
-- +------------+---------+
-- | 2021-03-01 | 1808.61 |
-- | 2021-04-10 | 1719.32 |
-- | 2021-04-11 | 8981.88 |
-- +------------+---------+

-- Q.10 Display the Order Number where the Customer has placed maximum amount Order
select ONUM from Orders where AMOUNT=(select MAX(AMOUNT) from Orders);
-- +------+
-- | ONUM |
-- +------+
-- | 3011 |
-- +------+