/* you MUST enter directly to a specific DB, so use

         sudo -u postgres psql -d school

   to enter postgresql */

CREATE TABLE students(StudentID integer, FirstName VARCHAR(20), ProgramName VARCHAR(30), primary key (StudentID));
CREATE TABLE grades(StudentID INTEGER, Course VARCHAR(20), Grade INTEGER, PRIMARY KEY (StudentID, Course));
/* we now need to ensure that the postgres user owns /vault/ and its contents, so make sure you use chown for that  */
COPY students(StudentID, FirstName, ProgramName)
FROM '/vault/students.csv'
DELIMITER ','
CSV HEADER;
COPY grades(StudentID, Course, Grade)
FROM '/vault/grades.csv'
DELIMITER ','
CSV HEADER;
