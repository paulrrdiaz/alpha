#!/bin/bash
# just change the project_name and run it
# remember that this bash is based on Apache/2.4.9 - OSX Yosemite
# you can see your apache' version run it the next line:
# $ httpd -v

project_name="alpha";
current_path="$(dirname "$(dirname "${PWD}")")/";
virtual_path="local."$project_name".com";

sudo chmod 777 $current_path;
sudo echo " "  >> /etc/hosts;
sudo bash -c "echo 127.0.0.1 "$virtual_path" >> /etc/hosts";

sudo echo " "  >> /etc/apache2/extra/httpd-vhosts.conf;
sudo bash -c 'echo "<Directory "'$current_path'app/">
   Options FollowSymlinks
   AllowOverride All
   Require all granted
</Directory>" >> /etc/apache2/extra/httpd-vhosts.conf';
sudo echo " "  >> /etc/apache2/extra/httpd-vhosts.conf;
sudo bash -c 'echo "<VirtualHost *:80>
    ServerName '$virtual_path'
    DocumentRoot "'$current_path'app/"
    SetEnv APPLICATION_ENV local
</VirtualHost>" >> /etc/apache2/extra/httpd-vhosts.conf';
sudo apachectl restart;
exit;