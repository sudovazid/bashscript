#!/bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd_service
systemctl enable httpd_service
echo "Hello World from $(hostname -f)" > /var/www/html/index.html

