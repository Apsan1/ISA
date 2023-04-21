CREATE TABLE students
(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone_number VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    major_subject VARCHAR(50) NOT NULL,
    gpa DECIMAL(3,2) NOT NULL,
    graduation_date DATE NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO students (first_name, last_name, age, email, phone_number, address, major_subject, gpa, graduation_date) 
VALUES 
('Kabir','Singh','25','kabir@pretti.com','+977 9849874565','Pokhara',
'Business',2.65,'2023-06-01'),
('Bikash', 'Sharma', '23', 'bikash.sharma@gmail.com', '+977 9861321245', 'Kathmandu', 
'Computer Science', 3.50, '2023-04-19'),
('Garima', 'Prajapati', '2000-04-11', 'garima.prajapati@hotmail.com', '+977 9846532789', 'Kathmandu', 
'Business Studies', 3.52, '2022-03-29'),
('Harish', 'Aryal', '22', 'harish.aryal@gmail.com', '+977 9876534211', 'Pokhara', 
'Computer Science', 3.20, '2022-04-19'),
('Biraj', 'Adhikari', '24', 'biraj.adhikari@gmail.com', '+977 9876213455', 'Kathmandu', 
'Computer Science', 2.67, '2022-07-10'),
('Bikash', 'Sharma', '23', 'bikky.sharma@hotmail.com', '+977 9865214578', 'Jhapa', 
'Computer Science', 2.91, '2022-09-15'),
('Anjali', 'Karki', '23', 'anjali.karki@gmail.com', '+977 9861729384', 'Sunsari', 
'Computer Science', 3.24, '2023-01-03'),
('Raju', 'Maharjan', '24', 'raju.maharjan@hotmail.com', '+977 9860847220', 'Butwal', 
'Business Studies', 3.44, '2023-03-19'),
('Surya', 'Dhungana', '25', 'surya.dhungana@gmail.com', '+977 9855315960', 'Bhaktapur', 
'Computer Science', 2.78, '2022-11-22'),
('Anita', 'Thapa', '24', 'anita.thapa@hotmail.com', '+977 9840210648', 'Kathmandu', 
'Computer Science', 3.11, '2023-02-14'),
('Nabin', 'Bhattarai', '23', 'nabin.bhattarai@gmail.com', '+977 9807312856', 'Kathmandu', 
'Business Studies', 2.90, '2022-12-28');

UPDATE students SET age = 27 WHERE id = 3;
SELECT DISTINCT age FROM students;

SELECT * FROM students WHERE gpa = 3.50;

SELECT * FROM students WHERE gpa BETWEEN 3.00 AND 3.50;

SELECT * FROM students WHERE major_subject = 'Computer Science';

SELECT * FROM students WHERE gpa > (SELECT AVG(gpa) FROM students);

SELECT * FROM students WHERE gpa BETWEEN (SELECT MIN(gpa) FROM students) AND (SELECT MAX(gpa) FROM students);

SELECT * FROM students WHERE email LIKE '%hotmail.com';