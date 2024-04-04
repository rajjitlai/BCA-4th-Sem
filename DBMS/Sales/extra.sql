select ONUM, AMOUNT, ODATE from Orders;
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

insert into Orders values (DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
select * from Orders;
-- +------+---------+------------+------+------+
-- | ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
-- +------+---------+------------+------+------+
-- | 3001 |   17.78 | 2021-03-01 | 2009 | 1007 |
-- | 3003 |  676.91 | 2021-03-01 | 2014 | 1006 |
-- | 3002 | 1800.21 | 2021-03-01 | 2019 | 1004 |
-- | 3005 | 1650.54 | 2021-03-01 | 2018 | 1002 |
-- | 3006 | 1808.61 | 2021-03-01 | 2016 | 1005 |
-- | 3009 | 1719.32 | 2021-04-10 | 2013 | 1008 |
-- | 3007 |   57.57 | 2021-04-10 | 2017 | 1004 |
-- | 3008 | 7433.00 | 2021-04-11 | 2020 | 1005 |
-- | 3010 | 3108.59 | 2021-04-11 | 2012 | 1002 |
-- | 3011 | 8981.88 | 2021-04-11 | 2011 | 1008 |
-- | NULL |    NULL | NULL       | NULL | NULL |
-- +------+---------+------------+------+------+

select ONUM from Orders order by onum desc;
-- +------+
-- | ONUM |
-- +------+
-- | 3011 |
-- | 3010 |
-- | 3009 |
-- | 3008 |
-- | 3007 |
-- | 3006 |
-- | 3005 |
-- | 3003 |
-- | 3002 |
-- | 3001 |
-- | NULL |
-- | NULL |
-- +------+

select ONUM from Orders order by onum asc;
-- +------+
-- | ONUM |
-- +------+
-- | NULL |
-- | NULL |
-- | 3001 |
-- | 3002 |
-- | 3003 |
-- | 3005 |
-- | 3006 |
-- | 3007 |
-- | 3008 |
-- | 3009 |
-- | 3010 |
-- | 3011 |
-- +------+

update Orders set Amount=111.1 where onum=3003;
select * from Orders;
-- +------+---------+------------+------+------+
-- | ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
-- +------+---------+------------+------+------+
-- | 3001 |   17.78 | 2021-03-01 | 2009 | 1007 |
-- | 3003 |  111.10 | 2021-03-01 | 2014 | 1006 |
-- | 3002 | 1800.21 | 2021-03-01 | 2019 | 1004 |
-- | 3005 | 1650.54 | 2021-03-01 | 2018 | 1002 |
-- | 3006 | 1808.61 | 2021-03-01 | 2016 | 1005 |
-- | 3009 | 1719.32 | 2021-04-10 | 2013 | 1008 |
-- | 3007 |   57.57 | 2021-04-10 | 2017 | 1004 |
-- | 3008 | 7433.00 | 2021-04-11 | 2020 | 1005 |
-- | 3010 | 3108.59 | 2021-04-11 | 2012 | 1002 |
-- | 3011 | 8981.88 | 2021-04-11 | 2011 | 1008 |
-- | NULL |    NULL | NULL       | NULL | NULL |
-- | NULL |    NULL | NULL       | NULL | NULL |
-- +------+---------+------------+------+------+

select * from Orders where onum!="null";
-- +------+---------+------------+------+------+
-- | ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
-- +------+---------+------------+------+------+
-- | 3001 |   17.78 | 2021-03-01 | 2009 | 1007 |
-- | 3003 |  111.10 | 2021-03-01 | 2014 | 1006 |
-- | 3002 | 1800.21 | 2021-03-01 | 2019 | 1004 |
-- | 3005 | 1650.54 | 2021-03-01 | 2018 | 1002 |
-- | 3006 | 1808.61 | 2021-03-01 | 2016 | 1005 |
-- | 3009 | 1719.32 | 2021-04-10 | 2013 | 1008 |
-- | 3007 |   57.57 | 2021-04-10 | 2017 | 1004 |
-- | 3008 | 7433.00 | 2021-04-11 | 2020 | 1005 |
-- | 3010 | 3108.59 | 2021-04-11 | 2012 | 1002 |
-- | 3011 | 8981.88 | 2021-04-11 | 2011 | 1008 |
-- +------+---------+------------+------+------+

select * from Orders where onum!="null";
-- +------+---------+------------+------+------+
-- | ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
-- +------+---------+------------+------+------+
-- | 3001 |   17.78 | 2021-03-01 | 2009 | 1007 |
-- | 3003 |  111.10 | 2021-03-01 | 2014 | 1006 |
-- | 3002 | 1800.21 | 2021-03-01 | 2019 | 1004 |
-- | 3005 | 1650.54 | 2021-03-01 | 2018 | 1002 |
-- | 3006 | 1808.61 | 2021-03-01 | 2016 | 1005 |
-- | 3009 | 1719.32 | 2021-04-10 | 2013 | 1008 |
-- | 3007 |   57.57 | 2021-04-10 | 2017 | 1004 |
-- | 3008 | 7433.00 | 2021-04-11 | 2020 | 1005 |
-- | 3010 | 3108.59 | 2021-04-11 | 2012 | 1002 |
-- | 3011 | 8981.88 | 2021-04-11 | 2011 | 1008 |
-- +------+---------+------------+------+------+

select onum from Orders where Cnum=2009 or Cnum=2015 or Cnum=2019;
-- +------+
-- | onum |
-- +------+
-- | 3001 |
-- | 3002 |
-- +------+