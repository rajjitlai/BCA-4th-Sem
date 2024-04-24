-- Q.1 List of Salesman with their % of Commission
alter table Salesman modify COLUMN COMMISSION varchar(20);
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

-- Q.2 Display the list of Orders where SNUM is either 1004, 1008, 1007.
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

-- Q.3 Display the list of Customer whose name sending with letter "D"
select * from Customer where CNAME like "%d";

-- Output 
-- +------+--------+--------+--------+------+
-- | CNUM | CNAME  | CITY   | RATING | SNUM |
-- +------+--------+--------+--------+------+
-- | 2004 | Govind | Bombay | 300    | 1002 |
-- +------+--------+--------+--------+------+

-- Q.4 Display the total SNUM, Average, SNUM, MAX SNUM, MIN SNUM of Orders Table
select sum(SNUM), avg(SNUM), max(SNUM), min(SNUM) from Orders;

-- Output
-- +-----------+-----------+-----------+-----------+
-- | sum(SNUM) | avg(SNUM) | max(SNUM) | min(SNUM) |
-- +-----------+-----------+-----------+-----------+
-- | 10051     | 1005.1000 | 1008      | 1002      |
-- +-----------+-----------+-----------+-----------+

-- Q.5 Display the name of Salesman whose Customer rating is 100.
select SNAME from Salesman where SNUM in (select SNUM from Customer where RATING = 100);

-- Output
-- +-------+
-- | SNAME |
-- +-------+
-- | RAM   |
-- +-------+

-- Q.6 Display the customer number of customer whose commission is > 11
select CNAME from Customer where SNUM in (select SNUM from Salesman where COMMISSION > 11);

-- Output
-- +--------+
-- | CNAME  |
-- +--------+
-- | Harsh  |
-- | Gita   |
-- | Chirag |
-- +--------+