CREATE TABLE `workshop 7`.`students` (
    `Student_ID` INT NOT NULL,
    `Firstname` VARCHAR(20) NOT NULL,
    `Lastname` VARCHAR(15) NOT NULL,
    `Age` INT NOT NULL,
    `Gender` VARCHAR(10) NOT NULL,
    `Grade` VARCHAR(1) NOT NULL
) ENGINE = InnoDB;
ALTER TABLE students
MODIFY Student_ID INT AUTO_INCREMENT PRIMARY KEY;
INSERT INTO `students` (
        `Student_ID`,
        `Firstname`,
        `Lastname`,
        `Age`,
        `Gender`,
        `Grade`
    )
VALUES (NULL, 'Rakesh', 'Shrestha', '19', 'Male', 'A'),
    (NULL, 'Binita', 'Bhandari', '21', 'Female', 'B'),
    (NULL, 'Bobby', 'Sherpa', '20', 'Male', 'C'),
    (NULL, 'Sagar', 'Parajuli', '22', 'Male', 'A'),
    (NULL, 'Prajina', 'KC', '21', 'Female', 'B')

--a
SELECT * FROM `students`
--b
SELECT Firstname, Lastname FROM `students`
--c
SELECT Firstname, Lastname FROM students WHERE Grade = 'A'
--d
SELECT * FROM `students` WHERE Age >= 20;
--e
SELECT COUNT(CASE WHEN Gender='Male' THEN 1 END),
COUNT(CASE WHEN Gender='Female' THEN 1 END) FROM students
--f
UPDATE `students` SET Age = Age+1;
--g change grade 'B' to 'A'
UPDATE `students` SET Grade = 'A' WHERE Grade = 'B';
--f.	Update the grade of a specific student (e.g. StudentID=3) 
UPDATE `students` SET Grade = 'A' WHERE Student_ID = 3;