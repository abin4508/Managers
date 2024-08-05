#1
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    DOB DATE,
    Age INT CHECK (Age >= 18 AND Age <= 120),
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Gender CHAR(1),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2) NOT NULL
);
#2
INSERT INTO Managers (Manager_Id, First_name, Last_name, DOB, Age, Last_update, Gender, Department, Salary)
VALUES
(1, 'John', 'Doe', '1980-05-15', 44, CURRENT_TIMESTAMP, 'M', 'IT', 55000.00),
(2, 'Jane', 'Smith', '1975-08-22', 48, CURRENT_TIMESTAMP, 'F', 'HR', 62000.00),
(3, 'Aaliya', 'Khan', '1987-12-09', 36, CURRENT_TIMESTAMP, 'F', 'Finance', 48000.00),
(4, 'Michael', 'Johnson', '1990-03-30', 34, CURRENT_TIMESTAMP, 'M', 'IT', 53000.00),
(5, 'Emily', 'Davis', '1982-07-11', 42, CURRENT_TIMESTAMP, 'F', 'Marketing', 47000.00),
(6, 'Chris', 'Brown', '1985-09-25', 38, CURRENT_TIMESTAMP, 'M', 'IT', 60000.00),
(7, 'Sarah', 'Wilson', '1992-06-16', 31, CURRENT_TIMESTAMP, 'F', 'Sales', 50000.00),
(8, 'David', 'Taylor', '1988-11-04', 35, CURRENT_TIMESTAMP, 'M', 'Finance', 55000.00),
(9, 'Anna', 'Miller', '1983-04-19', 41, CURRENT_TIMESTAMP, 'F', 'HR', 52000.00),
(10, 'Daniel', 'Moore', '1991-02-14', 33, CURRENT_TIMESTAMP, 'M', 'Marketing', 49000.00);
#3
SELECT First_name, Last_name, DOB
FROM Managers
WHERE Manager_Id = 1;
#4
SELECT Manager_Id, First_name, Last_name, Salary * 12 AS Annual_Income
FROM Managers;
#5
SELECT *
FROM Managers
WHERE First_name != 'Aaliya';
#6
SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;
