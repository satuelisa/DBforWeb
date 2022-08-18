/* run with

     mysql --local-infile=1 -u root -p < demo.sql

to avoid typing or copypasting in interactive mode */

SHOW DATABASES;
CREATE DATABASE school; /* only once */
USE school; /* every time you use the database */
CREATE TABLE students(StudentID integer, FirstName VARCHAR(20), ProgramName VARCHAR(30), primary key (StudentID));
CREATE TABLE grades(StudentID INTEGER, Course VARCHAR(20), Grade INTEGER, PRIMARY KEY (StudentID, Course));

/* 

   in order to be able to load CSV files, we need to indicate to the
   server from where it is safe to do so

   we need to first create the folder at which we want to put the
   stuff that is safe, I will call mine "vault" and place it at the
   filesystem's root 

   (all this is done at the OS terminal, NOT within mysql)

 udo mkdir /vault

   and put the files we need to access in it (like the two example
   CSVs we used for joins in Session 3)

   to avoid copypasting files, we can use tools like curl or wget; if you do not have curl installed, use

sudo apt install curl

   to install it first and then use

sudo curl https://raw.githubusercontent.com/satuelisa/DBforWeb/main/joins/students.csv -o /vault/students.csv
sudo curl https://raw.githubusercontent.com/satuelisa/DBforWeb/main/joins/grades.csv -o /vault/grades.csv

   to download the CSV files into the special folder

   then I need to make mysql the owner of that folder and all its contents (if you add files, repeat this)
   
sudo chown -R mysql:mysql /vault/		

   now, with the editor of your choice, change the config file at /etc/mysql/my.cnf

   we need to add the following lines (here "vault" is the name of the
   folder we will create for the purpose and you may choose whichever
   name you wish for it)

[mysql] 
secure-file-priv=/vault

   in order to have this take effect, we must restart the mysql server
   (quit it if you are in it and then restart)

sudo systemctl restart mysql

     we are not done yet; start mysql with 

sudo mysql -u root -p

    and change the permissions to enable reading of local files with 

SET GLOBAL local_infile=1;

    and then quit with \q

*/

SHOW VARIABLES LIKE 'secure_file_priv'; /* should now show /vault/ as its value */
LOAD DATA LOCAL INFILE '/vault/students.csv'
INTO TABLE students
FIELDS TERMINATED BY ','
/* if your fields are enclosed in quotes, also mention that as ENCLOSED BY '"' at this point */
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; /* do not read the header row */
LOAD DATA LOCAL INFILE '/vault/grades.csv'
INTO TABLE grades
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; 

