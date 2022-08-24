# hopefully this step will be not needed in the near future, but in
# ubuntu 22.04 it is needed at the time when I write this
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1-1ubuntu2.1~18.04.20_amd64.deb
sudo dpkg -i libssl1.1_1.1.1-1ubuntu2.1~18.04.20_amd64.deb
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt update
sudo apt upgrade
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
# now set up nodejs if you do not have it yet
npm install mongodb
