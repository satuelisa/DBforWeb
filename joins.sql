CREATE TABLE students(StudentID integer, FirstName VARCHAR(20), ProgramName VARCHAR(30), primary key (StudentID));
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (123, 'Carmen', 'HR');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (125, 'Emilia', 'Finance');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (132, 'Sami', 'IT');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (139, 'Carlo', 'HR');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (141, 'Jules', 'Finance');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (142, 'Elisa', 'IT');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (147, 'James', 'IT');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (151, 'Carmen', 'Finance');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (152, 'Guadalupe', 'IT');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (156, 'Ivan', 'HR');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (163, 'Cecilia', 'IT');
CREATE TABLE grades(StudentID INTEGER, Course VARCHAR(20), Grade INTEGER, PRIMARY KEY (StudentID, Course));
INSERT INTO grades(StudentID, Course, Grade) VALUES (123, 'Stats', 87);
INSERT INTO grades(StudentID, Course, Grade) VALUES (139, 'Stats', 93);
INSERT INTO grades(StudentID, Course, Grade) VALUES (141, 'Stats', 78);
INSERT INTO grades(StudentID, Course, Grade) VALUES (163, 'Stats', 73);
INSERT INTO grades(StudentID, Course, Grade) VALUES (123, 'Programming', 82);
INSERT INTO grades(StudentID, Course, Grade) VALUES (132, 'Programming', 79);
INSERT INTO grades(StudentID, Course, Grade) VALUES (147, 'Programming', 96);
INSERT INTO grades(StudentID, Course, Grade) VALUES (151, 'Programming', 67);
INSERT INTO grades(StudentID, Course, Grade) VALUES (163, 'Programming', 85);
INSERT INTO grades(StudentID, Course, Grade) VALUES (123, 'Writing', 78);
INSERT INTO grades(StudentID, Course, Grade) VALUES (125, 'Writing', 93);
INSERT INTO grades(StudentID, Course, Grade) VALUES (141, 'Writing', 84);
INSERT INTO grades(StudentID, Course, Grade) VALUES (152, 'Writing', 64);
INSERT INTO grades(StudentID, Course, Grade) VALUES (156, 'Writing', 89);
INSERT INTO grades(StudentID, Course, Grade) VALUES (163, 'Writing', 92);
SELECT * FROM students JOIN grades USING (StudentID) ORDER BY Grade;
SELECT * FROM students LEFT JOIN grades USING (StudentID);
SELECT * FROM students RIGHT JOIN grades USING (StudentID);
SELECT * FROM students FULL OUTER JOIN grades USING (StudentID); /* Note the NULL values for Elisa */
SELECT * FROM students FULL OUTER JOIN grades USING (StudentID) WHERE Grade IS NULL; /* just Elisa now /*
SELECT StudentID, FirstName, COUNT(Grade) AS total FROM students JOIN grades USING (StudentID) GROUP BY StudentID ORDER BY total DESC; /* course completions per student */
SELECT ProgramName, COUNT(Grade) FROM students JOIN grades USING (StudentID) GROUP BY ProgramName; /* course completions per program /*
SELECT FirstName, AVG(Grade) FROM students JOIN grades USING (StudentID) GROUP BY StudentID; /* student GPA */
SELECT ProgramName, AVG(Grade) FROM students JOIN grades USING (StudentID) GROUP BY ProgramName; /* program-level GPA */
