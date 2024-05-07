-- Core data types (there are more though)
------------------------------------------
-- INT                 -- Whole numbers
-- DECIMAL(M,N)        -- Decimal numbers - M total digits, N digits after decimal
-- VARCHAR(1)          -- String of text of length 1
-- BLOB                -- Binary large object, stores large data
-- DATE                -- 'YYYY-MM-DD'
-- TIMESTAMP           -- 'YYYY-MM-DD HH:MM:SS' - used for recording

CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id) -- Primary key is automatically not null and unique
);

CREATE TABLE student (
    student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_id) -- Primary key is automatically not null and unique
);

CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'Undecided',
    PRIMARY KEY(student_id) -- Primary key is automatically not null and unique
);

DESCRIBE student;

DROP TABLE student; -- Delete table

ALTER TABLE student ADD gpa DECIMAL(3,2); -- Add column to table

ALTER TABLE student DROP COLUMN gpa; -- Delete column from table

INSERT INTO student(student_id, name) VALUES(1, 'Jack');
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
INSERT INTO student VALUES(3, 'Claire', 'Chemistry');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');

SELECT * FROM student;

UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Comp Sci'
WHERE major = 'Computer Science';

UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 4;

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

UPDATE student
SET name = 'Tom', major = 'Undecided'
WHERE student_id = 1;

UPDATE student
SET major = 'Undecided';

DELETE FROM student; -- Delete all rows in table

DELETE FROM STUDENT
WHERE student_id = 5;

SELECT * FROM student;

SELECT name FROM student;

SELECT student.name, student.major FROM student;

SELECT student.name, student.major
FROM student
ORDER BY name;

SELECT student.name, student.major
FROM student
ORDER BY name DESC;

SELECT student.name, student.major
FROM student
ORDER BY student_id;

SELECT student_id, student.name, student.major
FROM student
ORDER BY major, student_id;

SELECT *
FROM student
ORDER BY student_id DESC
LIMIT 3;

-- =, <>, >, <, >=, <=, AND, OR

SELECT *
FROM student
WHERE major = 'Biology';

SELECT *
FROM student
WHERE major <> 'Chemistry';

SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');
