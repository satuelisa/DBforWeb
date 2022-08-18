/* run with
   
    sqlite3 < example.sql

 to create, populate and store and then use

    sqlite3 school.db

 to interact with some SELECT statements or whatnot (Ctrl-D to exit)

 */  
 
CREATE TABLE IF NOT EXISTS students(StudentID integer, FirstName VARCHAR(20), ProgramName VARCHAR(30), primary key (StudentID));
CREATE TABLE IF NOT EXISTS grades(StudentID INTEGER, Course VARCHAR(20), Grade INTEGER, PRIMARY KEY (StudentID, Course));
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (123, 'Carmen', 'HR');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (125, 'Emilia', 'Finance');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (132, 'Sami', 'IT');
INSERT INTO students(StudentID, FirstName, ProgramName) VALUES (139, 'Carlo', 'HR');
INSERT INTO grades(StudentID, Course, Grade) VALUES (163, 'Stats', 73);
INSERT INTO grades(StudentID, Course, Grade) VALUES (132, 'Programming', 79);
INSERT INTO grades(StudentID, Course, Grade) VALUES (163, 'Programming', 85);
INSERT INTO grades(StudentID, Course, Grade) VALUES (123, 'Writing', 78);
INSERT INTO grades(StudentID, Course, Grade) VALUES (125, 'Writing', 93);
INSERT INTO grades(StudentID, Course, Grade) VALUES (141, 'Writing', 84);
.backup school.db
