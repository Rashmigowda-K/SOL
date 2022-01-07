create table ordersDB
(
ord_no int primary key,
purch_amt float,
ord_date date,
customer_id int  ,
salesman_id int  )

--constraint pk_orderss primary key(salesman_id,customer_id)

--drop table ordersDB


insert into ordersDB values (70001,150.5,'2012-10-05',3005 ,5002)
insert into ordersDB values(70009 ,270.65 ,'2012-09-10 ',3001, 5005)
insert into ordersDB values(70002, 65.26,'2012-10-05' ,3002, 5001)
insert into ordersDB values(70004, 110.5 ,'2012-08-17',3009, 5003)
insert into ordersDB values(70007 ,948.5,'2012-09-10', 3005 ,5002)
insert into ordersDB values(70005 ,2400.6 ,'2012-07-27', 3007, 5001)
insert into ordersDB values(70008 ,5760,'2012-09-10'  ,3002 ,5001)
insert into ordersDB values(70010 ,1983.43, '2012-10-10' ,3004, 5006)
insert into ordersDB values(70003 ,2480.4, '2012-10-10' ,3009, 5003)
insert into ordersDB values(70012, 250.45, '2012-06-27' ,3008, 5002)
insert into ordersDB values(70011 ,75.29 ,'2012-08-17 ',3003 ,5007)
insert into ordersDB values(70013 ,3045.6 ,'2012-04-25', 3002, 5001)

select * from ordersDB
--query to display the columns in a specific order like order date,salesman id,
-- order number and purchase amount from for all the orders
select ord_date,salesman_id,ord_no,purch_amt from ordersDB
--SQL query to find the orders, which are delivered by a salesperson of ID.
-- 5001. Return ord_no, ord_date, purch_amt
select ord_no,ord_date,purch_amt from ordersDB where salesman_id = 5001

-- calculate average purchase amount of all orders. Return average purchase amount. 
select AVG (purch_amt) from ordersDB

-- count the number of customers. Return number of customers.
select count(*) from customer

-- the maximum purchase amount
select max(purch_amt) from ordersDB

--the highest purchase amount ordered by each customer. 
--Return customer ID, maximum purchase amount
select customer_id,ord_date,MAX(purch_amt) from ordersDB group by customer_id,ord_date
