-- find all products
select * from products;
-- find all products that cost $1400
select * from products Where cost > 1400;
-- find all products that cost $11.99 or $13.99
select * from products where cost = 11.99 or cost = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
select * from products where not cost = 11.99;
-- find all products and sort them by price from greatest to least
select * from products order by price desc;
-- find all employees who don't have a middle initial
select * from employees where not middleInital; 
-- find distinct product prices
select distinct prices;
-- find all employees whose first name starts with the letter ājā
select * from employees where firstName like 'j%';
-- find all Macbooks
select * from products where Name Like '%Macbook%';
-- find all products that are on sale
select * from products where OnSale = 1;
-- find the average price of all products
select avg(price) From Products; 
-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM employees 
WHERE MiddleInitial IS NULL AND title = 'Geek Squad';
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest.
select * from products where StockLevel between 500 and 1200 order by price desc;