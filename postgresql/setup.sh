sudo apt update
sudo apt install postgresql postgresql-contrib
sudo systemctl start postgresql.service
# we will run this as a special postgres user
#
#          sudo -u postgres psql
# 
# while in, create our example DB using
#
#          CREATE DATABASE school;
#
# and then exit by typing
#
#          \q
