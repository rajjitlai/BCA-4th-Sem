-- Table Salesman
create table Salesman(SNUM int(20), SNAME varchar(20), CITY varchar(30), COMMISSION int(5));
insert into Salesman values(1001, "RAM", "LONDON", 14);
insert into Salesman values(1002, "ANAND", "NEW DELHI", 10);
insert into Salesman values(1003, "SHYAM", "MUMBAI", 13);
insert into Salesman values(1004, "MOTILAL", "NEW YORK", 11);
insert into Salesman values(1005, "PIYUSH", "BARODA", 15);
insert into Salesman values(1006, "SEJAL", "SPAIN", 12);
select * from Salesman;
-- Output
-- +------+---------+-----------+-----------+
-- | SNUM | SNAME   | CITY      | COMMISSION|
-- +------+---------+-----------+-----------+
-- | 1001 | RAM     | LONDON    |        14 |
-- | 1002 | ANAND   | NEW DELHI |        10 |
-- | 1003 | SHYAM   | MUMBAI    |        13 |
-- | 1004 | MOTILAL | NEW YORK  |        11 |
-- | 1005 | PIYUSH  | BARODA    |        15 |
-- | 1006 | SEJAL   | SPAIN     |        12 |
-- +------+---------+-----------+-----------+

