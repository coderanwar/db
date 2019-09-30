CREATE TABLE student (
    roll INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    f_name VARCHAR(30) NOT NULL,
    city VARCHAR(15) NOT NULL,
    PRIMARY KEY (roll)
);


INSERT INTO student VALUES ('1', 'Rupa', 'F', 'Aziz', 'DHAKA'), ('2', 'Himu', 'M', 'Islam', 'Dhaka'), ('4', 'Anwar Hossain', 'M', 'Ali Akbar', 'Shashail'), ('3', 'Sweety', 'F', 'L', 'Shibpur'), ('5', 'Anu', 'F', 'Roni', 'Shibpur');



CREATE TABLE exam (
    exam_no INT UNSIGNED NOT NULL,
    date DATE NOT NULL,
    PRIMARY KEY (exam_no)
);


INSERT INTO exam (exam_no, date) VALUES ('1', '2015-03-14'), ('2', '2015-07-27'), ('3', '2015-11-19');



CREATE TABLE absence (
    roll INT UNSIGNED NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (roll) REFERENCES student (roll)
);


INSERT INTO absence (roll, date) VALUES ('3', '2015-03-14'), ('4', '2015-07-27');



CREATE TABLE score (
    exam_no INT UNSIGNED NOT NULL,
    roll INT UNSIGNED NOT NULL,
    marks INT NOT NULL,
    FOREIGN KEY (roll) REFERENCES student (roll),
    FOREIGN KEY (exam_no) REFERENCES exam (exam_no)
);


INSERT INTO score (exam_no, roll, marks) VALUES ('1', '1', '70'), ('1', '2', '80'), ('1', '4', '87'), ('1', '5', '70'), ('2', '1', '90'), ('2', '2', '75'), ('2', '3', '95'), ('2', '5', '79'), ('3', '1', '90'), ('3', '2', '84'), ('3', '3', '81'), ('3', '4', '82'), ('3', '5', '92');



SELECT * FROM  student;

SELECT name, roll FROM student
ORDER BY name;

SELECT * FROM  student
WHERE sex = 'M';

SELECT * FROM  student
WHERE roll =  3;

SELECT * FROM  score INNER JOIN student
ON student.roll = score.roll;

SELECT * FROM  score INNER JOIN exam INNER JOIN student
ON student.roll = score.roll
AND score.exam_no = exam.exam_no;

SELECT * FROM  score INNER JOIN exam INNER JOIN student
ON student.roll = score.roll
AND score.exam_no = exam.exam_no
WHERE score.marks > 80;

SELECT * FROM  score INNER JOIN exam INNER JOIN student
ON student.roll = score.roll
AND score.exam_no = exam.exam_no
WHERE score.marks > 80
ORDER BY score.marks DESC;

SELECT * FROM  score INNER JOIN exam INNER JOIN student
ON student.roll = score.roll
AND score.exam_no = exam.exam_no
WHERE score.marks > 80 AND student.sex = 'F'
ORDER BY score.marks DESC;

SELECT * FROM  score INNER JOIN exam INNER JOIN student
ON student.roll = score.roll
AND score.exam_no = exam.exam_no
WHERE score.marks > 80 AND student.sex = 'F' OR score.marks = 80
ORDER BY score.marks DESC;

SELECT * FROM  score INNER JOIN exam INNER JOIN student
ON student.roll = score.roll
AND score.exam_no = exam.exam_no
WHERE score.marks > 79 AND student.sex = 'F' AND exam.exam_no = 3
ORDER BY score.marks DESC;

SELECT student.roll, student.name, score.marks, exam.exam_no
FROM  score INNER JOIN exam INNER JOIN student
ON student.roll = score.roll
AND score.exam_no = exam.exam_no
WHERE score.marks > 79 AND student.sex = 'F' 
ORDER BY student.roll;

SELECT * FROM absence INNER JOIN exam INNER JOIN student
ON student.roll = absence.roll AND absence.date = exam.date;

SELECT student.roll, student.name, exam.exam_no 
FROM absence INNER JOIN exam INNER JOIN student
ON student.roll = absence.roll AND absence.date = exam.date;

SELECT student.roll AS ROLL, student.name AS Name, exam.exam_no AS 'Exam ID' 
FROM absence INNER JOIN exam INNER JOIN student
ON student.roll = absence.roll AND absence.date = exam.date;

DROP TABLE absence;


