var sqlite3 = require('sqlite3').verbose();
const db = new sqlite3.Database('./cats.db');

var name = "Elisa"; // + ', "chicken"); DROP TABLE cats;'
var snack = "chicken"; // + "); DROP TABLE IF EXISTS cats;"

const sleep = (waitTimeInMs) => new Promise(resolve => setTimeout(resolve, waitTimeInMs))

db.serialize(()=>{
    db.run('INSERT or REPLACE INTO cats(CatName, FavSnack) VALUES("Tiguidou", "dryfood"); DROP TABLE cats;',
	   function(err) {
	       if (err) {
		   return console.log(err.message);
	       }
	       console.log('First insert done!');
	   });
});

sleep(1000);

db.serialize(()=>{
    db.all('SELECT * FROM cats', function(err, matches) {  
	if (err) {
	    return console.error(err.message);
	}
	matches.forEach(function (row) {
	    console.log('Before: ' + row.CatName + ' likes ' + row.FavSnack) });
    });
});

sleep(1000);

db.serialize(()=>{
    db.run('INSERT or REPLACE INTO cats(CatName, FavSnack) VALUES(?, ?)',
	   [name, snack],
	   function(err) {
	       if (err) {
		   return console.log(err.message);
	       }
	       console.log('Second insert done!');
	   });
});

sleep(1000);

db.serialize(()=>{
    db.all('SELECT * FROM cats', function(err, matches) {  
	if (err) {
	    return console.error(err.message);
	}
	matches.forEach(function (row) {
	    console.log('After: ' + row.CatName + ' likes ' + row.FavSnack) });
    })
});
