create table salesmanDB
(
salesmanID int primary key,
name varchar(100),
city varchar(100),
commission float ,
)
--drop table salesmanDB

insert into salesmanDB values (5001,'James Hoog','New York',0.15)
insert into salesmanDB values (5002,'Nail Knite','Paris',0.13)
insert into salesmanDB values (5005,'Pit Alex','London',0.11)
insert into salesmanDB values (5006,'Mc Lyon','Paris',0.14) 
insert into salesmanDB values (5007,'Paul Adam','Rome',0.13)
insert into salesmanDB values (5003,'Lauson Hen','San Jose',0.12)

select * from salesmanDB

--SQL statement to display specific columns like name and commission for all the salesmen
select name,commission from salesmanDB
--SQL statement to display all the information of all salesmen
select * from salesmanDB
--SQL query to find the salespeople who lives in the City of Paris 
--Return salespersons name, city
 select name,city from salesmanDB where city like 'paris'

 -- count the number of unique salespeople. Return number of salespeople.
select count(distinct salesmanID) from salesmanDB