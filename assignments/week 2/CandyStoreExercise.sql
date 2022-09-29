--Candy Store Exercise
create table inventory (
	id int primary key,
	"name" varchar(25),
	price decimal,
	description varchar(255),
	quantity int
);

insert into inventory
values
	(1001, 'Hershey Bar', 3.45, 'A small choclate bar', 50),
	(1002, 'Skittles', 3.05, 'A bag of rainbow colored candies', 100),
	(2003, 'Gummy Bears', 5.55, 'A large bag of chewy fruit-flavored bears', 48),
	(2005, 'Sour Gummy Worms', 9.55, 'A very large bag of gelatin worms', 20),
	(3008, 'Lollipop', 2.25, 'A hard candy atop a stick', 268),
	(9007, 'M&Ms', 1.95, 'A bag of small choclate candies', 58);

--run a query to read and display all records in our table
select * from inventory;

-- a customer just purchased 2 hershey bars update the inventory to be 48 now
update inventory set quantity = 48 where id = 1001;

--run a query to return only the descriptions of all records in the table
select description from inventory;

--run a query to return the name and price of all records in the table
select "name", price from inventory;

--change the description of the sour gummy worms to be 'a very large, delicious bag of worms'
update inventory set description = 'A very large, delicious bag of worms' where id = 2005;

--received shipment of M&Ms, update quantity to 100
update inventory set quantity = 100 where id = 9007;

--high demand for lollipop, change price to 2.50
update inventory set price = 2.50 where id = 3008;

--create employees table with id, name, favorite_candy (reference the primary key of inventory)
create table employees (
	id int primary key,
	"name" varchar(50),
	favorite_candy int references inventory
);

insert into employees
values
	(4001, 'Willy Wonka', 2005),
	(4002, 'Milton Hershey', 1001),
	(4003, 'Franklin Mars', 9007),
	(4004, 'John Cadbury', null);

--run a query to print the name of each employee and their favorite candy if they have one
select * from employees e
join inventory i on e.favorite_candy = i.id

--run a query to display the names of all candies and the name of the corresponding employee who likes them
--print names of all the candies, even if none of the employees like them
select i."name", e."name"
from inventory i
left join employees e on i.id = e.favorite_candy;

--what is the total cost
