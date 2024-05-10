use sql_store;

-- Using WHERE 
SELECT *
FROM order_items
WHERE order_id = 6 AND unit_price * quantity > 30;

-- Get the customers whose  :
-- addresses contain TRAIL or AVENUE
SELECT *
FROM customers
WHERE address LIKE '%trail%' OR address LIKE '%avenue%';

-- Phone numbers end with 9
SELECT *
FROM customers
WHERE phone LIKE '%9';

-- Phone numbers not end with 9
SELECT *
FROM customers
WHERE phone NOT LIKE '%9';

-- REGEXP PRACTICE
-- GET the customers

-- Returns customers whose first name ends with EY or ON 
SELECT *
FROM customers
WHERE last_name REGEXP 'EY$|ON$';
-- or 
-- WHERE last_name REGEXP '(EY|ON)$'

-- Returns customers whose first name starts with MY or contains SE
SELECT *
FROM customers
WHERE last_name REGEXP '^MY|SE';

-- Returns customers whose first name contains B followed by R or U
SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';
-- or 
-- WHERE last_name REGEXP 'br|bu'

-- Get the order that are not shipped
SELECT *
FROM orders 
WHERE shipped_date IS NULL OR shipper_id IS NULL;


-- order by total price
SELECT * 
FROM order_items
WHERE order_id = 2
ORDER BY quantity * unit_price DESC;

-- using alise for better understanding
SELECT *, quantity * unit_price as total_price 
FROM order_items
WHERE order_id = 2
ORDER BY quantity * unit_price DESC;

-- more minimizing
SELECT *, quantity * unit_price as total_price 
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;

-- get the top three loyal customer
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01'
ORDER BY points DESC
LIMIT 3;

-- INNER JOIN
SELECT *
FROM order_items oi
JOIN products prd ON prd.product_id = oi.product_id;

SELECT order_id, prd.product_id, prd.name, oi.unit_price
FROM order_items oi
JOIN products prd ON prd.product_id = oi.product_id
ORDER BY oi.unit_price DESC
LIMIT 5;

-- JOIN MULTIPLE TABLE
USE sql_invoicing;

SELECT * 
FROM payments p
JOIN clients c 
     ON p.client_id = c.client_id
JOIN payment_methods pm
     ON p.payment_method = pm.payment_method_id;


SELECT 
     p.date,
     p.invoice_id,
     p.amount,
     c.name,
     pm.name
FROM payments p
JOIN clients c 
     ON p.client_id = c.client_id
JOIN payment_methods pm
     ON p.payment_method = pm.payment_method_id;

-- Using JOIN and Where together
SELECT companies.permalink AS companies_permalink,
       companies.name AS companies_name,
       acquisitions.company_permalink AS acquisitions_permalink,
       acquisitions.acquired_at AS acquired_date
  FROM tutorial.crunchbase_companies companies
  LEFT JOIN tutorial.crunchbase_acquisitions acquisitions
    ON companies.permalink = acquisitions.company_permalink
 WHERE acquisitions.company_permalink != '/company/1000memories'
    OR acquisitions.company_permalink IS NULL
 ORDER BY 1











