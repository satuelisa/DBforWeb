const {MongoClient} = require('mongodb');

var url = 'mongodb://localhost:27017/school';
const client = new MongoClient(url);
const dbName = "school";

client
    .connect()
    .then(
        client =>
        client
            .db(dbName)
            .listCollections()
            .toArray() 
    )
    .then(cols =>
	cols.forEach(collection => { console.log(collection.name); }))
    .finally(() => client.close());
