// run this server with
//
//             node server.js
//
// see the tutorial at 
// https://www.digitalocean.com/community/tutorials/how-to-create-a-web-server-in-node-js-with-the-http-module
// for further details

// libraries
const http = require("http"); // for serving HTTP requests
const fs = require('fs').promises; // for reading files
const qs = require('querystring'); // for parsing form fields from POST

// all of the following has to do with our database access
var sqlite3 = require('sqlite3').verbose();
// for fancier options, see
// https://medium.com/swlh/read-html-form-data-using-get-and-post-method-in-node-js-8d2c7880adbf

// server setup
const host = 'localhost'; // if you HAVE a publicly accessible domain, feel free to use that
const port = 8080; // if you pick an unavailable port, you get an error

// database access to an existing database (we could also create in here, of course)
const db = new sqlite3.Database('./cats.db');

const requestListener = function (req, res) {
    switch(req.url) {
    case "/insert": // add a cat into the database
	let body = ''
        req.on('data', chunk => {
            body += chunk.toString()
            req.on('end', () => {
		const fields = qs.parse(body);
		var name = fields.cat; 
		var snack = fields.snack;
		db.serialize(()=>{
		    db.run('INSERT or REPLACE INTO cats(CatName, FavSnack) VALUES(?, ?)',
			   [name, snack],
			   function(err) {
			       if (err) {
				   return console.log(err.message);
			       }
			       console.log('cat');
			       res.writeHead(200);
			       res.end('Thanks!');
			   });
		});
	    });
	});	    
	break;
    case "/cats": // view the cats in the database
	var listing = "<html><body>";	
	db.serialize(()=>{
	    db.all('SELECT * FROM cats', function(err, matches) {  
		if (err) {
		    return console.error(err.message);
		}
		matches.forEach(function (row) { listing += row.CatName + '<br>'; });
		res.writeHead(200);
		listing += '</body></html>'
		res.end(listing);
		console.log('list');
	    });
	});
	break;
    default: // by default, show the form
 	// we are being silly here and loading it every time; check
	// the tutorial for a better way
	console.log('form');	    
	fs.readFile(__dirname + "/form.html")
            .then(content => {
		res.setHeader("Content-Type", "text/html");
		res.writeHead(200);
		res.end(content);
            })
            .catch(err => {
		res.writeHead(500);
		res.end(err);
		return;
            });
    } 
}; // it would be clean to include an option to close the database access without shutting down the server

const server = http.createServer(requestListener);
server.listen(port, host, () => {
    console.log(`Listening on http://${host}:${port}`);
});
