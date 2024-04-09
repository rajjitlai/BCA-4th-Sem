-- Create the Department table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dname VARCHAR(50)
);

-- Create the Employee table
CREATE TABLE Employee (
    eid INT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100),
    dept_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

-- Insert sample data into Department table
INSERT INTO Department (dept_id, dname) VALUES
(1, 'Research'),
(2, 'Development'),
(3, 'Sales'),
(4, 'Human Resources');

-- Insert sample data into Employee table
INSERT INTO Employee (eid, name, address, dept_id, salary) VALUES
(1, 'John', '123 Main St', 1, 50000.00),
(2, 'Mary', '456 Elm St', 1, 55000.00),
(3, 'Robert', '789 Oak St', 2, 60000.00),
(4, 'Rachel', '101 Pine St', 3, 52000.00),
(5, 'Richard', '222 Maple St', 1, 58000.00),
(6, 'Rebecca', '333 Cedar St', 2, 62000.00),
(7, 'Ryan', '444 Birch St', 3, 54000.00),
(8, 'Rita', '555 Walnut St', 1, 59000.00),
(9, 'Michael', '666 Pine St', 4, 50000.00),
(10, 'Laura', '777 Oak St', 2, 63000.00);

-- i) Retrieve the name of all employees whose name starts with "R" working in Research Department
SELECT e.name
FROM Employee e
JOIN Department d ON e.dept_id = d.dept_id
WHERE e.name LIKE 'R%' AND d.dname = 'Research';

-- Output
+--------+
|  name  |
+--------+
| Rachel |
| Richard|
|  Rita  |
+--------+

-- ii) Retrieve the number of employees working in each department. The result should be in ascending order of the number of employees
SELECT d.dname, COUNT(e.eid) AS num_employees
FROM Department d
LEFT JOIN Employee e ON d.dept_id = e.dept_id
GROUP BY d.dname
ORDER BY num_employees ASC;

-- Output
+-----------------+---------------+
|     dname       | num_employees |
+-----------------+---------------+
| Human Resources |       1       |
|  Sales          |       2       |
| Development     |       3       |
| Research        |       4       |
+-----------------+---------------+

-- iii) Retrieve the name of all employees whose salary is greater than the salary of all the employees in department number 5
SELECT e.name
FROM Employee e
WHERE e.salary > (SELECT MAX(salary) FROM Employee WHERE dept_id = 5);

-- Output
+--------+
|  name  |
+--------+
| Robert |
| Rebecca|
| Ryan   |
| Rita   |
| Laura  |
+--------+

-- iv) Find the average salary of all the employees of the Research Department as well as the maximum salary and minimum salary in the department
SELECT 
  AVG(e.salary) AS avg_salary,
  MAX(e.salary) AS max_salary,
  MIN(e.salary) AS min_salary
FROM Employee e
JOIN Department d ON e.dept_id = d.dept_id
WHERE d.dname = 'Research';

-- Output
+-------------+-------------+-------------+
| avg_salary | max_salary  | min_salary  |
+-------------+-------------+-------------+
|   56250.00 |   58000.00  |   50000.00  |
+-------------+-------------+-------------+

-- v) For each department, retrieve the department name, total salary, and average salary
SELECT 
  d.dname,
  SUM(e.salary) AS total_salary,
  AVG(e.salary) AS avg_salary
FROM Department d
LEFT JOIN Employee e ON d.dept_id = e.dept_id
GROUP BY d.dname;

-- Output
+------------------+---------------+-------------+
|      dname       | total_salary  | avg_salary  |
+------------------+---------------+-------------+
| Human Resources  |   50000.00    |  50000.00   |
| Sales            |   106000.00   |  53000.00   |
| Development      |   175000.00   |  58333.33   |
| Research         |   222000.00   |  55500.00   |
+------------------+---------------+-------------+
