wget -q -O - https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -
sudo sh -c 'echo "deb https://www.apache.org/dist/cassandra/debian 40x main" > /etc/apt/sources.list.d/cassandra.list'
sudo apt update
sudo apt upgrade
sudo apt install default-jdk
sudo apt install cassandra
nodetool status # this will show the datacenter name
# start the interactive shell with
#
#   cqlsh
#
# while in, create a keyspace with 
#
# CREATE KEYSPACE IF NOT EXISTS school WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy', 'datacenter1' : 1 };
#
# and then load it with
#
# USE school;
#
# if you wish to store arrays, you need to create a type for that
#
# CREATE TYPE topic { theme text }; 
#
# CREATE TABLE school.courses ( title text primary key, teacher text, weekday text, topics set<frozen <topic>> );
# CREATE TABLE school.students ( name text primary key, registrations list<text>, email text ); 
#
# (those are super bad keys, btw, as you should already know)
