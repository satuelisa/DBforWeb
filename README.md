# An Intro to Databases for Web Devs

Course material related to databases, intended for in-training web developers.

## Textbooks

We are using bits and pieces of the following electronic textbooks, available to registered students through the McGill Library.

### SQL

![Practical](https://user-images.githubusercontent.com/3371682/184220107-220dc950-73fc-4bca-9253-c96014ad2353.png) | ![Data](https://learning.oreilly.com/covers/urn:orm:book:9780750650861/400w/)
:------------------:|:------------------:
[Practical SQL](https://learning.oreilly.com/library/view/practical-sql-2nd/9781098129866/?sso_link=yes&sso_link_from=mcgill-university) | [Data Analysis](https://learning.oreilly.com/library/view/data-analysis-for/9780750650861/)
Book `D` | Book `H`

![Learn SQL](https://learning.oreilly.com/covers/urn:orm:book:9781492057604/200w/) | ![Cook SQL](https://learning.oreilly.com/covers/urn:orm:book:9781492077435/200w/) | ![Pocket](https://learning.oreilly.com/covers/urn:orm:book:9781492090397/200w/)
:------------------:|:------------------:|:------------------:
[Learning SQL](https://learning.oreilly.com/library/view/learning-sql-3rd/9781492057604/?sso_link=yes&sso_link_from=mcgill-university) | [SQL Cookbook](https://learning.oreilly.com/library/view/sql-cookbook-2nd/9781492077435/?sso_link=yes&sso_link_from=mcgill-university) | [SQL Pocket Guide](https://learning.oreilly.com/library/view/sql-pocket-guide/9781492090397/?sso_link=yes&sso_link_from=mcgill-university)
Book `L` | Book `C` | Book `P`

### NoSQL

![MongoDB](https://learning.oreilly.com/covers/urn:orm:book:9781839210648/200w/) | ![MongoNode](https://learning.oreilly.com/covers/urn:orm:book:9781783987306/200w/) | ![Neo4j](https://learning.oreilly.com/covers/urn:orm:book:9781784393441/200w/)
:------------------:|:------------------:|:------------------:
[MongoDB Fundamentals](https://learning.oreilly.com/library/view/mongodb-fundamentals/9781839210648/?sso_link=yes&sso_link_from=mcgill-university) | [Web Development with MongoDB and Node.js](https://learning.oreilly.com/library/view/web-development-with/9781783987306/?sso_link=yes&sso_link_from=mcgill-university) | [Neo4J Graph Data Modelling](https://learning.oreilly.com/library/view/neo4j-graph-data/9781784393441/?sso_link=yes&sso_link_from=mcgill-university)
Book `M` | Book `N` | Book `J` 

## Recommended optional readings

### Session 1

- Up to and including Part 3 of `H`, from the very beginning of the book until the end of Chapter 15
- Chapter 2 of `L`: Creating And Populating A Database
- Chapter 2 of `D`: Creating Your First Database And Table 
- Chapter 5 of `P`: Creating, Updating, and Deleting

### Session 2

- Chapter 1 of `C`: Retrieving Records
- Chapter 2 of `C`: Sorting Query Results
- Chapter 3 of `L`: Query Primer
- Chapter 4 of `P`: Querying Basics
- Chapter 3 of `D`: Beginning Data Exploration with `SELECT`

### Session 3

- Chapter 5 of `L`: Querying Multiple Tables
- Chapter 7 of `D`: Joining Tables in a Relational Database
- Chapter 3 of `C`: Working With Multiple Tables
- Chapter 9 of `P`: Working With Multiple Tables And Queries

## Tools and documentation

Tools are listed for the session during which we first use them. Some are used again in later sessions.

### Sessions 1 & 2

- [Replit](https://replit.com/)
- [Google Colab](https://colab.research.google.com/?)
- [SQLite](https://sqlite.org)
- [SQLite Command Line Interface](https://sqlite.org/cli.html)

### Session 3

- [SQL Online IDE](https://sqliteonline.com/)

### Session 4

- [Ubuntu & VirtualBox](https://ubuntu.com/tutorials/how-to-run-ubuntu-desktop-on-a-virtual-machine-using-virtualbox#1-overview)
- [MySQL](https://www.mysql.com/)
- [MySQL Tutorial](https://www.mysqltutorial.org/): guides for installation and interfaces
- [MariaDB](https://mariadb.org/)
- [PostgreSQL](https://www.postgresql.org/)
- [SQL Server](https://www.microsoft.com/en-ca/sql-server/)
- [SQL Server Ubuntu Quickstart](https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-ver16)

### Session 5

- [NodeJS](https://nodejs.org/)
- [HTML forms](https://developer.mozilla.org/en-US/docs/Learn/Forms/Your_first_form)

### Session 6

- [Python](https://www.python.org/); note that our early Colab examples use Python to connect to SQLite
- [Create a Python webserver](https://pythonbasics.org/webserver/)
- [Flask](https://flask.palletsprojects.com/), one of the many options for webdev in Python
- [PHP](https://www.php.net/)
- [PHP & MySQL](https://www.mysqltutorial.org/php-mysql/)
- [Ruby on Rails](https://rubyonrails.org/)
- [RoR & PostgreSQL](https://syndicode.com/blog/getting-started-with-ruby-on-rails-database-development/)
- [Java](https://www.java.com/en/)
- [Java & MySQL](https://netbeans.apache.org/kb/docs/web/mysql-webapp.html)
- [Perl](https://www.perl.org/)
- [Perl & DBI](https://www.tutorialspoint.com/perl/perl_database_access.htm)

### Session 7

- [JSON](https://www.w3schools.com/js/js_json_intro.asp)
- [JSON Validator](https://jsonlint.com/)
- [BSON](https://bsonspec.org/)

## Example codes

### Session 1

- [Replit demo](https://replit.com/@satuelisa/S1Creation#main.sql)
- [Python Colab demo](https://colab.research.google.com/github/satuelisa/DBforWeb/blob/main/DBW_01.ipynb)

### Session 2

- [Replit demo](https://replit.com/@satuelisa/S2Queries#main.sql)
- [Python Colab demo](https://colab.research.google.com/github/satuelisa/DBforWeb/blob/main/DBW_02.ipynb)

### Session 3

- [Python Colab demo](https://github.com/satuelisa/DBforWeb/blob/main/DBW_03.ipynb)
- [PostgreSQL demo](https://github.com/satuelisa/DBforWeb/blob/main/joins.sql) to execute at [SQL Online IDE](https://sqliteonline.com/)

### Session 4

- [SQLite](https://github.com/satuelisa/DBforWeb/tree/main/sqlite)
- [MySQL](https://github.com/satuelisa/DBforWeb/tree/main/mysql)
- [MariaDB](https://github.com/satuelisa/DBforWeb/tree/main/mariadb)
- [PostgreSQL](https://github.com/satuelisa/DBforWeb/tree/main/postgresql)
- [SQL Server](https://github.com/satuelisa/DBforWeb/tree/main/microsoft)

### Session 5

- [NodeJS](https://github.com/satuelisa/DBforWeb/tree/main/nodejs)

### Session 6

We do not use example codes in Session 6.

### Session 7

- [JavaScript & JSON](https://github.com/satuelisa/DBforWeb/tree/main/example.js)
- [An example JSON](https://github.com/satuelisa/DBforWeb/tree/main/courses.json)
- [MongoDB](https://github.com/satuelisa/DBforWeb/tree/main/mongodb)
- [NodeJS & MongoDB](https://github.com/satuelisa/DBforWeb/tree/main/mongdob/access.js)

## Concepts

Sessions with no concepts listed do not introduce new concepts, but rather new tools for the concepts we have encountered before.

### Session 1

- program-data independence
- database: achieve consistency, provide structure, avoid redundancy, limit unnecessary sharing, make data usable and accessible (define the scope; one or many?)
- sharing: purposeful replication of data in two or more places
- redundancy: unnecessary replication of data in two or more places
- database management system (DBMS): structuring, validation, recovery, monitoring, security, mapping of *schemas*
- *global* schema: what data is available, how is it stored and accessed
- *internal* schema: hardware-level implementation of the storage structure
- *conceptual* schema: data description (content and constraints)
- *external* schema: what an application sees when it accesses a database (format, visibility)

- (data) *model*: a description of a database that is not DBMS-specific; needs to map to a schema upon implementation
- *relational modelling*: the design of a model in terms identifying *attributes* and grouping them into *tables* 
- *entity-relationship modelling* (ER): identifying entities (conceptually related groups of attributes) and their relationships (associations between the attributes of the entities); see Figure 8.5 of `H` for an example
- *type* of entity: much like *class* in OOP
- *occurence* of type: much like an (object) *instance* in OOP
- *degree* of relationship: multiplicities at the end points, `1:1`, `1:many`, `many:many`, see Figure 9.2 of `H` for an example)
- *multiplicity* notation: `1`, `N`, `M`, `1..1`, `0..1`, `0..*`, `1..*` (see Figure 9.5 of `H` for an example)
- *recursive* relationship: a relationship from an entity to itself
- *decomposition* of `many:many`: create an intermediary entity to associate the sides (see Figure 10.2 of `H` for an example)
- *connection trap*: a part of an ER diagram that allows for an interpretation error (such as a *fan trap* or a *chasm trap*; see Chapter 11 of `H` for examples and definitions)

- *table*: a definition of what *columns* (attributes) the table stores for each *row* (record) stored in that table
- *attribute*: a property of a record that holds a value of a specified format (data type)
- *normalized* table: each attribute only holds a single value (rows are repeated to accomodate multiple values; for example, products in a shopping basket)
- *fully normalized table*: a normalized table that contains no redundant data
- *record*: a unique combination of attribute values within a table
- *null*: a value that is assigned to an attribute that is unknown or undefined in some way
- *determinant*: attribute X is determined by (depends on) attribute Y is duplicate values of X are always associated to one same value of Y  
- *determinancy*: a diagram that places an arrow from Y to X if and only if Y determines X
- *composite* determinancy: a combination of attributes determines another attribute (draw boxes to group the codeterinants in the diagram)
- *transitive* determinancy: Z determines Y and Y determines X, so Z transitively determines X (draw a longer arrow from Z to X to show this in a diagram, if so desired)
- *superfluous*: an attribute X is only determined by Y so that knowing Y already narrows down the value of X
- (primary) key: a unique *identifier* for a record; in a dependency diagram, it is the "root" of the dependency tree; if there are several candidates, one is assigned explicitly as the key of the table
- table definition: `tableName (attributeName, secondAttributeName, ...)` (some like to underline or otherwise highlight the attribute that serves as the primary key)

### Session 2

- conjuntion: two conditions must be both true for the combination to be true (`and`)
- disjunction: two conditions must both be false for the combination to be false (`or`)  
- concatenate: combine two string into a single one: `hello` concatenated with `world` is `helloworld` 
- ascending: increasing order, from lower to higher values
- descending: decreasing order, from higher to lower values

### Session 3

- (inner) join: link rows of one table into rows of another table in a specific manner, usually by matching keys in one to keys in another
- left join: keep all rows of the *second* table that match a row in the *first* table (those of the first one are always kept)
- right join: keep all rows of the *first* table that match a row in the *second* table (those of the second one are always kept)
- (full) outer join: keep the rows from both, leaving the head or the tail blank if there was no match
- cross join: in the result, include each row of the first table combined with each row of the second table, repeating to include all combinations of the two; in math, this is called a *Cartesian product*

### Session 7

- JSON: JavaScript Object Notation (a text file describingh structured data)


## Assignments

The participation journal and the weekly reflections are detailed at [Overleaf](https://www.overleaf.com/read/rtppdwxqwscb) in addition to being incorporated in `myCourses` LMS on which the classes are held. All submissions must be done through the LMS, respecting the deadlines as shown there.
