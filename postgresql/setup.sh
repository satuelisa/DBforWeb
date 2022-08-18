sudo apt update
sudo apt install postgresql postgresql-contrib
sudo systemctl start postgresql.service
# these databases will be specific to the location at which you operate,
# so we will first go into our special folder by executing
#
#          cd /vault/
# 
# and making sure that the postgres user owns in now by
#
#          sudo chown postgras:postgres -R /vault/
#
# after which we will run this as a special postgres user
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
