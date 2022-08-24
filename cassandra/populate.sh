curl -OL https://downloads.datastax.com/dsbulk/dsbulk-1.10.tar.gz
tar -xzvf dsbulk-1.10.tar.gz
cd dsbulk-1.10.0/bin
location=`pwd`
export PATH=$location:$PATH
# will need Java to be installed, but setup.sh already installs a JDK
dsbulk --version
# to load, FIRST go to where the JSON files are
cd /home/elisa/Github/DBforWeb # yours will not be this location
dsbulk load -k school -t courses -c json -url course1.json
dsbulk load -k school -t courses -c json -url course2.json
dsbulk load -k school -t students -c json -url student1.json
dsbulk load -k school -t students -c json -url student2.json
# then go back to cqlsh to see what is stored
#
# SELECT * FROM school.students;
# SELECT * FROM school.courses;
#
# note that student2.json does NOT get populated since it does not match the schema (Nefer has no email)
#
# we can, however, add entries with absent values on the shell
#
# INSERT INTO school.students JSON '{"name" : "Nefer", "registrations": [ "Webdev 101", "Programming" ]}';
