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


-- (4) QUERY : To find those departments where the average salary is less than the averages for all departments











-- PT AE-24

