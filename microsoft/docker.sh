# Microsoft has not yet made SQL Server support Ubuntu 22.04, so wehave to set this up in docker                                                                                                                    
#                                                                                                                                                                                                                   
# guide: https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository                                                                                                                                       
sudo apt update
sudo apt install ca-certificates gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \                                                                                        
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo docker run hello-world # check it        
