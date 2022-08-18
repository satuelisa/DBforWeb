sudo apt update
sudo apt install postgresql postgresql-contrib
sudo systemctl start postgresql.service
# we will run this as a special postgres user
#
#          sudo -u postgres psql
