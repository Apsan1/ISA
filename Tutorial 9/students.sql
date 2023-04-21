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