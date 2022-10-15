mongoimport --db school --collection courses --type json --file ../course1.json
mongoimport --db school --collection courses --type json --file ../course2.json
mongoimport --db school --collection students --type json --file ../student1.json
mongoimport --db school --collection students --type json --file ../student2.json
# test interactively by running mongo
# show dbs
# use school
# show collections
# db.courses.find()
# db.students.find()
