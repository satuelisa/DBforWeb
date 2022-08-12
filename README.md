# An Intro to Databases for Web Devs

Course material related to databases, intended for in-training web developers.

## Textbooks


We are using bits and pieces of the following electronic textbooks, available to registered students through the McGill Library.

### SQL

![Learn SQL](https://learning.oreilly.com/covers/urn:orm:book:9781492057604/200w/) | ![Cook SQL](https://learning.oreilly.com/covers/urn:orm:book:9781492077435/200w/) | ![Pocket](https://learning.oreilly.com/covers/urn:orm:book:9781492090397/200w/)
:------------------:|:------------------:|:------------------:
[Learning SQL](https://learning.oreilly.com/library/view/learning-sql-3rd/9781492057604/?sso_link=yes&sso_link_from=mcgill-university) | [SQL Cookbook](https://learning.oreilly.com/library/view/sql-cookbook-2nd/9781492077435/?sso_link=yes&sso_link_from=mcgill-university) | [SQL Pocket Guide](https://learning.oreilly.com/library/view/sql-pocket-guide/9781492090397/?sso_link=yes&sso_link_from=mcgill-university)

### NoSQL

![MongoDB](https://learning.oreilly.com/covers/urn:orm:book:9781839210648/200w/) | ![MongoNode](https://learning.oreilly.com/covers/urn:orm:book:9781783987306/200w/) | ![Neo4j](https://learning.oreilly.com/covers/urn:orm:book:9781784393441/200w/)
:------------------:|:------------------:|:------------------:
[MongoDB Fundamentals](https://learning.oreilly.com/library/view/mongodb-fundamentals/9781839210648/?sso_link=yes&sso_link_from=mcgill-university) | [Web Development with MongoDB and Node.js](https://learning.oreilly.com/library/view/web-development-with/9781783987306/?sso_link=yes&sso_link_from=mcgill-university) | [Neo4J Graph Data Modelling](https://learning.oreilly.com/library/view/neo4j-graph-data/9781784393441/?sso_link=yes&sso_link_from=mcgill-university)

### Additional

![Practical](https://user-images.githubusercontent.com/3371682/184220107-220dc950-73fc-4bca-9253-c96014ad2353.png) | ![Data](https://learning.oreilly.com/covers/urn:orm:book:9780750650861/400w/)
:------------------:|:------------------:
[Practical SQL](https://learning.oreilly.com/library/view/practical-sql-2nd/9781098129866/?sso_link=yes&sso_link_from=mcgill-university) | [Data Analysis](https://learning.oreilly.com/library/view/data-analysis-for/9780750650861/)

## Session materials

### Optional readings

- S1: Up to and including Part 3 of Hume, from the very beginning of the book until the end of Chapter 15

### Example codes

- S1 [Replit demo](https://replit.com/@satuelisa/Intro?v=1)
- S1 [Python Colab demo](https://colab.research.google.com/github/satuelisa/DBforWeb/blob/main/DBW_01.ipynb)

## Concepts

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
- *entity-relationship modelling* (ER): identifying entities (conceptually related groups of attributes) and their relationships (associations between the attributes of the entities); see Figure 8.5 of Hume for an example
- *type* of entity: much like *class* in OOP
- *occurence* of type: much like an (object) *instance* in OOP
- *degree* of relationship: multiplicities at the end points, `1:1`, `1:many`, `many:many`, see Figure 9.2 of Hume for an example)
- *multiplicity* notation: `1`, `N`, `M`, `1..1`, `0..1`, `0..*`, `1..*` (see Figure 9.5 of Hume for an example)
- *recursive* relationship: a relationship from an entity to itself
- *decomposition* of `many:many`: create an intermediary entity to associate the sides (see Figure 10.2 of Hume for an example)
- *connection trap*: a part of an ER diagram that allows for an interpretation error (such as a *fan trap* or a *chasm trap*; see Chapter 11 of Hume for examples and definitions)

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
