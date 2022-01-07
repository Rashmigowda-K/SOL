create table customerDB
(
customer_id int primary key ,
cust_name varchar(100), 
city varchar(100) ,
grade int default null , 
salesman_id int  ,
)

drop table customer
update customerDB set grade='  ' where customer_id=3001;


insert into customerDB values (3002 , 'Nick Rimando' , 'New York' , 100 , 5001)
insert into customerDB values (3007 ,'Brad Davis' , 'New York' , 200 , 5001)
insert into customerDB values (3005 ,'Graham Zusi'  , 'California',  200 , 5002)
insert into customerDB values (3008 ,'Julian Green' , 'London' , 300 , 5002)
insert into customerDB values (3004 ,'Fabian Johnson' , 'Paris' , 300 , 5006)
insert into customerDB values (3009 ,' Geoff Cameron ', 'Berlin' , 100 , 5003)
insert into customerDB values (3003 ,'Jozy Altidor' ,  'Moscow', 200 , 5007)
insert into customerDB values (3001 ,' Brad Guzan' , 'London' ,0, 5005)


select * from customerDB

--SQL query to find those customers whose grade is 200.
-- Return customer_id, cust_name, city, grade, salesman_id
select customer_id,cust_name,city,grade,salesman_id from customerDB where grade like 200

--write a SQL query to find the highest grade of the customers for each of the city. 
--Return city, maximum grade.

select city, max(grade) from customerDB group by city