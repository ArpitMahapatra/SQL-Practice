# Basic Commands
SELECT * 
FROM parks_and_recreation.employee_demographics; 

# Maths Login in SQL
SELECT first_name, 
last_name,
birth_date, 
age,
age + 10
FROM parks_and_recreation.employee_demographics; 

# Distinct command
SELECT distinct first_name, gender
FROM parks_and_recreation.employee_demographics;  

# Where command
# Comparison operators

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = "Leslie";  

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000;  

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender != "female";  

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date < "1985-01-01" 
AND gender = 'male';



