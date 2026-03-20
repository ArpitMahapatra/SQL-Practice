SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE ( first_name = 'Leslie' AND age = 44) OR age > 55;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'Jer%';
# % sign in the like statement means that anything can take the place of the sign 
# In this case Anything can come after the letters JER

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___';

# _ in like statement means only one value can take its place
# In this case the above statement means that only two characters can take place after the letter A

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1989%';

# Group by and Order by

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, count(gender)
FROM employee_demographics
GROUP BY gender;

SELECT *
FROM employee_demographics
#GROUP BY first_name
ORDER BY age DESC
;

# When we put multiple order by commands the order of the commands is also important 
# In the above case if we write order by age, gender, the age will be the priority first and then the gender 

SELECT *
FROM employee_demographics
#GROUP BY first_name
ORDER BY 5, 4 
;

# The numbering after the order commnad in this case is for the number of columns in the table but it is surely not the best practise

SELECT gender, AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender
;