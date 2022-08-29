# tutorial at 
# https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-neo4j-on-ubuntu-22-04
curl -fsSL https://debian.neo4j.com/neotechnology.gpg.key |sudo gpg --dearmor -o /usr/share/keyrings/neo4j.gpg
echo "deb [signed-by=/usr/share/keyrings/neo4j.gpg] https://debian.neo4j.com stable 4.1" | sudo tee -a /etc/apt/sources.list.d/neo4j.list
sudo apt update
sudo apt install neo4j
sudo systemctl enable neo4j.service
sudo systemctl start neo4j.service
# use
#
#    sudo systemctl status neo4j.service
#
# to check if it is running okay and then
#
#    cypher-shell
#
# if it is
#
# the default user and the default password are neo4j (you will be
# forced to change the latter, I used the name of my latest black cat)
#
# (note that :exit quits that shell)
