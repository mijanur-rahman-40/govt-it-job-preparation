-- Query performing on Mosh Course database : sql_hr, sql_inventory, sql_invooicing, sql_store

USE sql_store; 





-- Retrieving all data of customers  
-- WHERE -> to filter the result
SELECT * FROM customers;
-- Another way 
-- SELECT * FROM `sql_store`.`customers` 




-- Retrieving specific colums of customers    
SELECT points, customer_id, first_name FROM customers; 





-- Filtering cutomers:  
-- KEYWORD order is important
SELECT *  
FROM customers
-- WHERE customer_id = 1

-- WHERE points > 3000

-- Both uppercase and lowercase work perfectly
-- WHERE state = 'VA'
-- WHERE state = 'va'

-- Search with date
-- WHERE birth_date >= '1990-01-01'

-- IN -> To specify multiple possible values for a column
-- BETWEEN -> WHERE city IN ('Chicago','London')
-- WHERE state NOT IN ('VA', 'FL', 'GA')

-- NOT EQUAL -> <> or != 
-- WHERE points <> 796
-- Or : Same Effect -> WHERE points != 1899

-- LIKE -> Search for a pattern for both uppercase and lowercase
-- % -> any number of characters, _ -> single character
-- WHERE state LIKE 'f%'
-- WHERE last_name LIKE 'b%'
-- WHERE last_name LIKE 'brush%'

-- matching 'b' at the beginning, middle or end 
-- WHERE last_name LIKE '%b%'

-- all the customers last_name end by y
-- WHERE last_name LIKE '%y'

-- Match only two character end with y
-- WHERE last_name LIKE '_y'

-- Matchig the 6 character string last_name end with y
-- WHERE last_name LIKE '_____y'

-- Five character starting with b and ending with y
WHERE last_name LIKE 'b____y'

-- BETWEEN -> Between a certain range
-- WHERE points >= 1000 AND points <= 3000
-- same query can be wriiten in a clener way
-- WHERE points BETWEEN 1000 AND 3000  
-- WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'  

-- Multiple search condition in filtreing data
-- WHERE birth_date >= '1990-01-01' AND points > 1000
-- WHERE birth_date >= '1990-01-01' OR points > 1000
-- WHERE birth_date >= '1990-01-01' OR points > 500 AND state = 'VA'

-- AND operator execute first than OR
-- Higer to Lower order : / -> * -> + -> - 
-- WHERE birth_date >= '1990-01-01' OR (points > 2500 AND state = 'VA')

-- WHERE NOT (birth_date > '1990-01-01' OR points > 1000) 
-- Same query can be written as : 
-- WHERE birth_date <= '1990-01-01' AND points <= 1000

-- The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.





-- two columns and values
SELECT 1, 2;  
ORDER BY first_name;





-- SELECT clause in details  
-- SELECT last_name, first_name, points, points + 10
SELECT  
  last_name, 
  first_name, 
  points,  
  points * 10 + 100
from customers;





SELECT 
  last_name,  
  first_name, 
  points, 
  (points + 10) * 100,
  -- adding specific alias. to use alias, use 'AS' keyword before the given new name
  -- Aliases are used to give a table, or a column in a table, a temporary name.
  (points + 10) * 100 AS discount_factor, 
  (points + 10) * 100 AS 'discount factor',  
  (points + 10) * 100 AS "discount factor"
from customers;




-- Update column  
-- SELECT state FROM customers; 
UPDATE customers SET city = 'Sylhet' WHERE (customer_id = 2); 





-- Retrieving all distinct state data of customers 
SELECT DISTINCT city FROM customers; 
SELECT COUNT(DISTINCT city) FROM customers;  




-- REGEXP OPERATOR
SELECT * 
FROM customers
-- using normal form
-- WHERE last_name LIKE '%field%';

-- can be used by REGEXP keywoed
-- WHERE last_name REGEXP 'field';
 
-- ^ -> beginning, $ -> end, | -> logical or, [abcd] -> match any single character listed in the brackets, [a-z] -> any characters from a to z 



-- ^ -> beginning with 'field' string
-- WHERE last_name REGEXP '^field';

-- $ -> ending with 'field' string
-- WHERE last_name REGEXP 'field$';

-- Match the string 'field' or 'mac' in strart or end
-- | -> vertical bar or Pipe or Multiple search Pattern
-- WHERE last_name REGEXP 'field|mac';

-- WHERE last_name REGEXP 'field|mac|rose';

-- WHERE last_name REGEXP '^field|mac|rose';

-- WHERE last_name REGEXP 'field$|mac|rose';

-- WHERE last_name REGEXP 'field$|mac|^rose';

-- WHERE last_name REGEXP 'field$|mac$|^rose';
 
-- matching customer name : ge or ie or me
-- Any of the character from 'gim' before 'e'
-- WHERE last_name REGEXP '[gim]e';

-- Any of the character from 'gim' after 'e'
-- WHERE last_name REGEXP 'e[gim]';

-- range of characters
WHERE last_name REGEXP '[a-h]e';




-- NULL VALUES  
-- all the customer who do not have phone
SELECT *
FROM customers
-- WHERE phone IS NULL;
WHERE phone IS NOT NULL;





-- THE ORDER BY CLASUE
SELECT * 
FROM customers
-- ORDER BY first_name;
-- ORDER BY first_name DESC;

-- Sort data by multiple columns
-- ORDER BY state, first_name; 
-- ORDER BY first_name, state;
-- ORDER BY first_name DESC;
ORDER BY state DESC, first_name ASC; 

-- Another way of sorting
SELECT first_name, last_name
FROM customers
ORDER BY birth_date; 

-- sort by data using column position that are selecting to show
SELECT first_name, last_name
FROM customers
-- 1 -> first_name, 2 -> last_name 
ORDER BY 1, 2;  

-- order creating alise
SELECT first_name, last_name, 10 + 10 AS points
FROM customers
ORDER BY points, first_name; 




-- LIMIT data, it always come into last
SELECT *
FROM customers 
-- LIMIT 3;
-- LIMIT 300; 
-- for pagination or Offseting
-- 6 -> skip first 6, 3 -> show 3 records
LIMIT 6, 3




-- INNER JOIN
SELECT * 
FROM orders 
-- INNER is optiinal 
INNER JOIN customers
ON orders.customer_id = customers.customer_id;

-- specify columns
SELECT order_id, first_name, last_name
FROM orders 
INNER JOIN customers
ON orders.customer_id = customers.customer_id;

-- Here customer_id is ambiguous, cause both orders and customers table have customer_id. So we have to specify which tables customer_id
SELECT order_id, customer_id, first_name, last_name
FROM orders 
INNER JOIN customers
ON orders.customer_id = customers.customer_id;

-- 
SELECT order_id, orders.customer_id, first_name, last_name
FROM orders 
INNER JOIN customers
ON orders.customer_id = customers.customer_id;

-- using alias in table name for simply the code, when you define an alias, you have to use it everywhere.
SELECT order_id, ord.customer_id, first_name, last_name
FROM orders ord
INNER JOIN customers cus
ON ord.customer_id = cus.customer_id;





-- Working with multiple database
-- How to combine columns from tables accross multiple databases

-- sql_inventory is out of this database
SELECT * 
FROM order_items oi 
JOIN sql_inventory.products prd
ON oi.product_id = prd.product_id;

-- This query can be written in different way. When we consider our selected table is sql_inventory
USE sql_inventory; 

SELECT *
FROM sql_store.order_items oi 
JOIN products prd
ON oi.product_id = prd.product_id





-- SELF JOIN
-- Here Join will perform on same table or on that table
-- One colum data(Like reports_to) refer to the main colum(primary key id) on that table
-- In the sql_hr database employee reports to another employee(a manager)
-- we have to use different aliases

USE sql_hr;  

SELECT *
FROM employees e 
JOIN employees m
ON e.reports_to = m.employee_id;

SELECT e.employee_id, e.first_name AS employee_name, m.first_name AS manger
FROM employees e 
JOIN employees m
ON e.reports_to = m.employee_id





-- JOINING MULTIPLE TABLES
-- JOINING THREE TABLES

USE sql_store;

SELECT * 
FROM orders o
JOIN customers c 
  ON o.customer_id = c.customer_id
JOIN order_statuses os
  ON o.status = os.order_status_id;


SELECT 
    o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
FROM orders o
JOIN customers c 
  ON o.customer_id = c.customer_id
JOIN order_statuses os
  ON o.status = os.order_status_id 
  
  
  
  
  
-- Compound Join Condition, combine two primary key as composite key
SELECT *
FROM order_items oi 
JOIN order_item_notes oin 
   ON oi.order_id = oin.order_id
   AND oi.product_id = oin.product_id;


SELECT *  
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id;
-- Above code can be written using IMPLICIT JOIN(Here basically query perform without JOIN keyword)
SELECT * 
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;






-- OUTER JOIN
-- INNER and OUTER JOIN are vice versa
-- Basically difference in FROM table , JOIN table

SELECT *  
FROM customers c  
JOIN orders o
ON o.customer_id = c.customer_id;


SELECT 
    c.customer_id, 
    c.first_name,
     o.order_id
FROM customers c  
JOIN orders o
ON o.customer_id = c.customer_id
ORDER BY c.customer_id;
-- the above code only return the matched customers but if you want to show the all customers who have any order or not
-- then we have to use OUTER JOIN

-- Outer joins are joins that return matched values and unmatched values from either or both tables. There are a few types of outer joins:
-- LEFT JOIN returns only unmatched rows from the left table, as well as matched rows in both tables.
-- RIGHT JOIN returns only unmatched rows from the right table , as well as matched rows in both tables.
-- FULL OUTER JOIN returns unmatched rows from both tables,as well as matched rows in both tables.

-- LEFT JOIN
SELECT 
    c.customer_id, 
    c.first_name,
    o.order_id
-- customers is a LEFT table
-- All the record from the left table are returned whether the condition is true or not
FROM customers c  
LEFT JOIN orders o
-- LEFT OUTER JOIN orders o
-- Condition
ON o.customer_id = c.customer_id
ORDER BY c.customer_id





-- RIGHT JOIN
SELECT 
    o.order_id,
    c.customer_id, 
    c.first_name
-- orders is a RIGHT table
-- All the record from the right table are returned whether the condition is true or not
-- Here basically all the customer_id in orders table will exist in the customers table
FROM orders o 
RIGHT JOIN customers c
-- RIGHT OUTER JOIN customers c
-- Condition
ON o.customer_id = c.customer_id
ORDER BY c.customer_id




-- RIGHT JOIN
-- Also RIGHT JOIN can be written as follows
SELECT 
    c.customer_id, 
    c.first_name,
    o.order_id
-- Here basically all the customer_id in orders table will exist in the customers table
FROM customers c 
RIGHT JOIN orders o 
-- Condition
ON o.customer_id = c.customer_id
ORDER BY c.customer_id





-- https://stackoverflow.com/questions/57095115/why-we-use-left-join-right-join-differently-we-can-get-same-output-from-left

-- There really is no difference between a LEFT JOIN and a LEFT OUTER JOIN. 
-- Both versions of the syntax will produce the exact same result in PL/SQL. 
-- Some people do recommend including outer in a LEFT JOIN clause so it's clear that you're creating an outer join, but that's entirely optional. 
-- The same is true of a RIGHT JOIN and a RIGHT OUTER JOIN. In the end, then, it isn't a question of a LEFT JOIN vs. LEFT OUTER JOIN. 
-- They're one and the same thing.

-- LEFT JOIN -> It is also known as LEFT OUTER JOIN. 	RIGHT JOIN -> It is also called as RIGHT OUTER JOIN.







-- OUTER JOIN BETWEEN MULTIPLE TABLE
SELECT 
    c.customer_id, 
    c.first_name,
    o.order_id

FROM customers c 
LEFT JOIN orders o 
   ON o.customer_id = c.customer_id
JOIN shippers sh 
   ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;

-- Above code only show the matched shipper_id with the orders table. But some of the orders have no shipper_id.
-- Have to show both matvh and unmatched.

SELECT 
    c.customer_id, 
    c.first_name,
    o.order_id,
    sh.shipper_id,
    sh.name AS shipper
FROM customers c 
LEFT JOIN orders o 
   ON o.customer_id = c.customer_id
LEFT JOIN shippers sh 
   ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;



 SELECT 
    o.order_id,
    o.order_date,
    c.first_name AS customer,
    sh.name AS shipper,
    os.name AS status
FROM orders o 
JOIN customers c  
  ON o.customer_id = c.customer_id
  -- Here LEFT basically indicating the orders table  
LEFT JOIN shippers sh 
  ON o.shipper_id = sh.shipper_id
JOIN order_statuses os 
  ON o.status = os.order_status_id;
  
  


-- SELF OUTER JOIN
SELECT 
  e.employee_id, 
  e.first_name AS employee_name, 
  m.first_name AS manger
FROM employees e 
LEFT JOIN employees m
ON e.reports_to = m.employee_id





-- THE USING CLAUSE
SELECT 
    o.order_id,
    c.first_name,
    sh.name AS shipper
FROM orders o 
JOIN customers c  
  -- ON o.customer_id = c.customer_id
  -- To simply the above query, the code can be written as follows
  -- USING keyword only works if the column name is eaxctly same accross the different table  
  USING(customer_id) 
  -- Obiously some of our order are not shipped
LEFT JOIN shippers sh 
  -- ON o.shipper_id = sh.shipper_id
  USING(shipper_id)
  
  



-- ANY, ALL
-- ALL & ANY are logical operators in SQL. They return boolean value as a result.
-- ALL operator is used to select all tuples of SELECT STATEMENT. It is also used to compare a value to every value in another value set or result from a subquery.
-- The ALL operator returns TRUE if all of the subqueries values meet the condition. The ALL must be preceded by comparison operators and evaluates true if all of the subqueries values meet the condition.
-- ALL is used with SELECT, WHERE, HAVING statement.
USE sql_hr;

-- ALL
SELECT COUNT(*) FROM employees
                WHERE salary <
                ALL(SELECT salary from employees);  

SELECT salary from employees WHERE office_id = 1;

SELECT * FROM employees
                WHERE salary <
                ALL(SELECT salary from employees WHERE office_id = 1);  

SELECT * FROM employees
                WHERE salary >
                ALL(SELECT salary from employees WHERE office_id = 1);   
 
SELECT count(*) FROM employees
                WHERE salary =
                ALL(SELECT salary from employees WHERE office_id = 1); 
  
SELECT count(*) FROM employees
                WHERE salary =
                ALL(SELECT salary from employees GROUP BY first_name); 
                
                


-- ANY
-- returns a boolean value as a result
-- returns TRUE if ANY of the subquery values meet the condition

SELECT count(*) FROM employees
                WHERE salary >
                ANY(SELECT salary from employees);  

SELECT count(*) FROM employees
                WHERE salary <
                ANY(SELECT salary from employees); 

SELECT COUNT(*) FROM employees 
         WHERE salary =
         ANY(SELECT salary from employees); 

SELECT * FROM employees 
         WHERE salary =
         ANY(SELECT salary from employees GROUP BY first_name); 






USE sql_store;

SELECT product_id 
FROM order_items
WHERE quantity = 4
GROUP BY product_id;

SELECT name AS ProductName 
FROM products
WHERE product_id = ALL (SELECT product_id 
                       FROM order_items
                       WHERE quantity = 4 or quantity = 10);

SELECT avg(quantity) 
FROM order_items
GROUP BY order_id;

-- Every Aggregate Function must have GROUP BY statement
SELECT order_id AS OrderID 
FROM order_items 
GROUP BY order_id 
HAVING max(quantity) > ALL (SELECT avg(quantity) 
                            FROM order_items 
                            GROUP BY order_id);




-- EXISTS
-- The EXISTS operator is used to test for the existence of any record in a subquery.
-- The EXISTS operator returns TRUE if the subquery returns one or more records.
-- EXISTS operator generally used with Correlated Subqueries

-- Here exists basically return those matched product_id
-- If the same product_id matches multiple time, then it consider once. 
SELECT name
FROM products
WHERE EXISTS (SELECT * FROM order_items 
                       WHERE order_items.product_id = products.product_id 
                       AND quantity > 5);
SELECT name
FROM products
WHERE EXISTS (SELECT 1 FROM order_items 
                       WHERE order_items.product_id = products.product_id 
                       AND quantity > 5);

-- To get same output, query can be written using 'IN' keyword
-- Both have some key differences

SELECT name
FROM products
WHERE product_id IN (SELECT product_id FROM order_items 
                       WHERE order_items.product_id = products.product_id 
                       AND quantity > 5);




-- SQL Aggregate Functions
-- Aggregate functions are often used with the GROUP BY clause of the SELECT statement. The GROUP BY clause splits the result-set into groups of values and the aggregate function can be used to return a single value for each group.
-- The most commonly used SQL aggregate functions are:

-- MIN() - returns the smallest value within the selected column
-- MAX() - returns the largest value within the selected column
-- COUNT() - returns the number of rows in a set
-- SUM() - returns the total sum of a numerical column
-- AVG() - returns the average value of a numerical column
