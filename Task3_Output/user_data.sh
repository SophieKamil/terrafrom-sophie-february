#!/bin/bash
sudo yum install httpd -y 
sudo systemctl enable httpd
sudo systemctl start httpd

echo "<h1>Apache is Deployed via Terraform</h1>" > /var/www/html/index.html