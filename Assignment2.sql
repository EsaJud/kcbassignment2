# Query creates a new database 
CREATE DATABASE edu_institute;

# Query creates a table within the database
# student_id is the primary key for the table
CREATE TABLE students_data (
student_id INT PRIMARY KEY,
name VARCHAR (50),
age INT, 
gender CHAR (1), 
enrollment_date DATE, 
program VARCHAR (50)
);

# Query to insert sample data into the table 
INSERT INTO students_data
(student_id, name, age, gender, enrollment_date, program)
VALUES 
(1001, 'Caren Chesol', 20, 'F', '2023-09-01', 'Computer Science'),
(1091, 'Gibson Nyakanga', 22, 'F', '2022-12-15', 'Engineering'),
(789, 'Charlie Mark', 21, 'F', '2022-03-20', 'Data Science'),
(1562, 'Chloe Atieno', 23, 'F', '2022-08-10', 'Data Science'),
(2057, 'Eve Kipkoros', 19, 'M', '2023-05-05', 'Matehematics');

# Query selects all columns for rows where the program is "Data Science."
USE edu_institute;
SELECT *
FROM students_data
WHERE program = 'Data Science';

# Query counts all the rows students table 
SELECT COUNT(*) AS total_students
FROM students_data;

# Query returns a single column containing the current date. 
SELECT current_date() AS Todays_Date
FROM students_data;

# Query selects the student names in uppercase and includes the enrollment dates. 
SELECT UPPER (name) AS student_names, enrollment_date
FROM students_data;

# Query counts the number of students in each program and groups them
# Then orders the results in descending order based on the count
SELECT program, COUNT(*) as number_of_students
FROM students_data
GROUP BY program 
ORDER BY number_of_students DESC;

# Query selects the name and age columns from the students' table
# Then orders the results by age in ascending order
SELECT name, age 
FROM students_data 
ORDER BY age ASC 
LIMIT 1;