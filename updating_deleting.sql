CREATE TABLE
    student (
        student_id INT AUTO_INCREMENT,
        name VARCHAR(20) NOT NULL,
        major VARCHAR(20) DEFAULT 'undecided',
        PRIMARY KEY(student_id)
    );

SELECT * FROM student;

UPDATE
    student
SET
    major = "Bio"
WHERE
    major = "Biology";

UPDATE
    student
SET
    major = "Comp Sci"
WHERE
    major = "Computer Science";

UPDATE
    student
SET
    name = "Mary"
WHERE
    student_id = 3;

INSERT INTO
    student(name, major)
VALUES
('Harry', 'Chem');

UPDATE
    student
SET
    major = "Biochemistry"
WHERE
    major = "Bio"
    OR major = "Chem";

UPDATE  
    student
SET
    name = "Tom", major = "English"
WHERE
    student_id = 1; 

UPDATE  
    student
SET
    name = "Tom", major = "undecided" ; 


DELETE FROM 
    student
WHERE
    student_id = 4;  

DELETE FROM
    student
WHERE
    name = "Tom" AND major = "undecided";          

