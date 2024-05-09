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

-- using alias in table name for simply the code
SELECT order_id, ord.customer_id, first_name, last_name
FROM orders ord
INNER JOIN customers cus
ON ord.customer_id = cus.customer_id;
