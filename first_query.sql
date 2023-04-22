--creating tables

CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

DESCRIBE student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);

ALTER TABLE student DROP COLUMN gpa;

--adding data to our table

SELECT * FROM student;

INSERT INTO student(name,major) VALUES('Jack', 'Biology');
INSERT INTO student(name,major) VALUES('Marie', 'Computer Science');