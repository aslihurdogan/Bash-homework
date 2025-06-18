#!/bin/bash

function k-pop() {
	sudo useradd jenny
	sudo useradd rose
	sudo useradd lisa
	sudo useradd jisoo
	sudo groupadd blackpink
	sudo usermod -aG blackpink jenny
	sudo usermod -aG blackpink rose
	sudo usermod -aG blackpink lisa
	sudo usermod -aG blackpink jisoo

} 
k-pop

function wordpress () {
	wget https://wordpress.org/latest.tar.gz
        tar -xvzf latest.tar.gz
        sudo rsync -av wordpress/ /var/www/html/ 
echo "Installing Apache, PHP, and dependencies..."
        sudo apt update -y
        sudo apt install apache2 ghostscript libapache2-mod-php mysql-server php php-bcmath php-curl php-imagick php-intl php-json php-mbstring php-mysql php-xlm php-zip -y
}
wordpress

function binary () {
sudo yum install tree
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform

}
binary 
