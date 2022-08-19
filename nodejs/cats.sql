/* sqlite3 < cats.sql */  
CREATE TABLE cats(CatName VARCHAR(20), FavSnack VARCHAR(20), primary key (CatName));
INSERT INTO cats(CatName, FavSnack) VALUES ('Tesla', 'Ham');
.backup cats.db
