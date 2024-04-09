-- Table - Customer
create table Customer(CNUM int(5), CNAME varchar(20), CITY varchar(20), RATING int(4), SNUM int (5));
insert into Customer values(2001, "Harsh", "London", 100, 1001);
insert into Customer values(2002, "Gita", "Rome", 200, 1003);
insert into Customer values(2003, "Lalit", "Surat", 200, 1002);
insert into Customer values(2004, "Govind", "Bombay", 300, 1002);
insert into Customer values(2008, "Chirag", "London", 100, 1001);
insert into Customer values(2006, "Chinmay", "Surat", 400, 1007);
select * from Customer;
-- Output
-- +------+---------+--------+--------+------+
-- | CNUM | CNAME   | CITY   | RATING | SNUM |
-- +------+---------+--------+--------+------+
-- | 2001 | Harsh   | London |    100 | 1001 |
-- | 2002 | Gita    | Rome   |    200 | 1003 |
-- | 2003 | Lalit   | Surat  |    200 | 1002 |
-- | 2004 | Govind  | Bombay |    300 | 1002 |
-- | 2008 | Chirag  | London |    100 | 1001 |
-- | 2006 | Chinmay | Surat  |    400 | 1007 |
-- +------+---------+--------+--------+------+
