-- (1) QUERY : Find n-th higest salary
SELECT DISTINCT salary, e.first_name 
FROM Employees e
ORDER BY salary DESC
LIMIT 0,1; -- LIMIT 1,3; LIMIT 2,3;

-- WITHOUT LIMIT CLAUSE
SELECT salary, e1.first_name  
FROM Employees e1
WHERE 0 = (SELECT COUNT(DISTINCT salary)
FROM Employees e2 
WHERE e2.salary > e1.salary);

-- (2) QUERY : Fetch all the employees who are managers and who manage more than 2 employees. 

SELECT m.manager_id, m.name, COUNT(e.manager_id) as i_mange_total_employee
FROM Managers m
INNER JOIN Employees e
ON m.manager_id = e.manager_id
GROUP BY m.manager_id
HAVING COUNT(e.manager_id) >= 2; -- or m.manager_id

-- ALTER NATIVE WAYS FOR THE SAME RESULT
-- Table Interchanging after and before 'JOIN' keyword
SELECT m.manager_id, m.name, COUNT(e.manager_id) as i_mange_total_employees
FROM Employees e
INNER JOIN Managers m
ON m.manager_id = e.manager_id
GROUP BY m.manager_id
HAVING COUNT(m.manager_id) >= 2;

-- (3) QUERY : Find the empoyee name and his department whose salary is maximum
SELECT e.first_name, e.salary, d.dept_name
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id
ORDER BY e.salary DESC
LIMIT 1;

-- ALTERNATE WAY
SELECT e.first_name, e.salary, d.dept_name
FROM Employees e, Departments d
WHERE e.dept_id = d.dept_id
ORDER BY e.salary DESC
LIMIT 1;


-- (4) QUERY : To find those departments where the average salary is less than the averages for all departments
-- To get only the dept_id
SELECT dept_id
FROM Employees 
GROUP BY dept_id
HAVING AVG(salary) < (SELECT AVG(salary) FROM Employees);

-- Getting both name & id
SELECT  d.dept_id,d.dept_name
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_id
HAVING AVG(e.salary) < (SELECT AVG(salary) FROM Employees);

-- (16) QUERY : Retrieve the names of employee who have a salary higher than the average
-- salary of employees in their department
SELECT concat(e1.first_name,e1.last_name) as emp_name
FROM Employees e1
WHERE e1.salary > (
SELECT AVG(e2.salary) 
FROM Employees e2 
WHERE e1.dept_id = e2.dept_id);

-- WRONG QUERY
SELECT concat(e.first_name,e.last_name) as emp_name
FROM Employees e
GROUP BY e.dept_id
HAVING AVG(e.salary) < e.salary


 
-- () QUERY : 
-- () QUERY : 
-- () QUERY :
-- () QUERY : 
-- () QUERY : 
-- () QUERY : 
-- () QUERY : 
-- () QUERY : 
-- () QUERY : 
-- () QUERY :  










-- PT AE-24

