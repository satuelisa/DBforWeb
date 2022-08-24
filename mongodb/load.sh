mongoimport --db school --collection courses --type json --file ../courses.json
mongoimport --db school --collection students --type json --file ../students.json
# test interactively by running mongo
# show dbs
# use school
# show collections
# db.courses.find()
# db.students.find()
