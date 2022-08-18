sudo apt update
#                                                                                                                                     
# note: doing this will REPLACE your mysql installation with mariadb                                                                  
#                                                                                                                                     
# if you really want to install multiple SQL servers, please consider                                                                 
# some container-based virtualization setup                                                                                           
sudo apt install mariadb-server
# there may be additional questions involved in replacing existing installations                                                      
sudo systemctl start mariadb.service
sudo mysql_secure_installation # no need to change your password, but                                                                 
			       # DO disable the remote/test stuff and                                                                 
                               # then reload                                                                                          
# we can now rerun dump.sql from ../mysql/ 
# without needing to take any of the extra steps explained in comments
# since we created /vault/ and placed the files there when working with mysql
