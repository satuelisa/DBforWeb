# guide: https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver15&pivots=cs1-bash
sudo docker pull mcr.microsoft.com/mssql/server:2019-latest
# password must be at least eight characters long and contain
# characters from three of the following four sets: uppercase letters,
# lowercase letters, base-10 digits, and symbols
sudo docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=50m3.Th1ng.N0t.Dumb' -p 1433:1433 --name sql1 --hostname sql1 -d mcr.microsoft.com/mssql/server:2019-latest

# if you need to REDO this because you messed something up, erase the old version by running s
# 
#       sudo docker rm -f sql1
#
# and only then recreate it

sudo docker ps -a # this just lists your containers
# access the container with
#
#   sudo docker exec -it sql1 "bash"
#
# then interact with SQL Server
#
#  /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 50m3.Th1ng.N0t.Dumb 
#
#  now, we can interact with it (a bit of a pain, yes)
