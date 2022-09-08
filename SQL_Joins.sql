/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 select p.name, c.name 
 from products as p
 Inner Join categories as c
 On p.CategoryID = c.CategoryID
 Where c.name = 'computers';
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select products.name, products.price, reviews.rating
 from products 
 Inner Join reviews
 on products.ProductID = reviews.ProductID
 where reviews.rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select employees.FirstName, employees.LastName, Sum(sales.Quantity) as Total
From sales
Inner Join employees
on sales.EmployeeID = employees.EmployeeID
group by employees.EmployeeID
order by Total desc;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
select departments.Name As d, categories.Name as c
FROM departments
Inner Join categories
Where categories.Name = "appliances" Or categories.Name = "Games";
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
Select p.Name, Sum(s.Quantity) as Total,
Sum(s.quantity * s.PricePerUnit) as "Total Price Sold"
From products as p
Inner Join sales as s
On s.ProductID = p.ProductID
where Name Like '%Eagles: Hotel California%';
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select products.name, reviews.Reviewer, reviews.Rating, reviews.comment
From products Inner Join reviews
On products.ProductID = reviews.ProductID
Where products.ProductID = 857 and reviews.Rating = 1;



