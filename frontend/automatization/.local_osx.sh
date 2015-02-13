#!/bin/bash
#just change the project_name and run it
project_name="alpha";
current_path="$(dirname "$(dirname "${PWD}")")/";
virtual_path="local."$project_name".com";

sudo echo " "  >> /etc/hosts;
sudo bash -c "echo 127.0.0.1 "$virtual_path" >> /etc/hosts";

sudo echo " "  >> /etc/apache2/extra/httpd-vhosts.conf;
sudo bash -c 'echo "<VirtualHost *:80>
    ServerName '$virtual_path'
    DocumentRoot "'$current_path'app/"
    SetEnv APPLICATION_ENV local
</VirtualHost>" >> /etc/apache2/extra/httpd-vhosts.conf';
sudo apachectl restart;
exit;