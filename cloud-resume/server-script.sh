#!/bin/bash

# Update and install Apache
sudo yum update -y
sudo yum install httpd -y

# Start Apache and enable it to start on boot
sudo systemctl start httpd
sudo systemctl enable httpd

# Create directories for CSS, JS, and assets (images, fonts, etc.)
sudo mkdir -p /var/www/html/css
sudo mkdir -p /var/www/html/js
sudo mkdir -p /var/www/html/assets/img

# Copy the HTML, CSS, JS, and assets to their respective directories
# Assume these files are available in the current directory or passed from Terraform

# Copy the index.html
sudo cp "/Users/juanalicea/Library/Mobile Documents/com~apple~CloudDocs/Cloud/Project Repositories/Terraform-Project/Website Project/cloud-resume/dist/index.html" /var/www/html/index.html

# Copy the CSS files
sudo cp "/Users/juanalicea/Library/Mobile Documents/com~apple~CloudDocs/Cloud/Project Repositories/Terraform-Project/Website Project/cloud-resume/dist/css/styles.css" /var/www/html/css/styles.css

# Copy the JS files
sudo cp "/Users/juanalicea/Library/Mobile Documents/com~apple~CloudDocs/Cloud/Project Repositories/Terraform-Project/Website Project/cloud-resume/dist/js/scripts.js" /var/www/html/js/scripts.js

# Copy the assets (e.g., images)
sudo cp "/Users/juanalicea/Library/Mobile Documents/com~apple~CloudDocs/Cloud/Project Repositories/Terraform-Project/Website Project/cloud-resume/dist/assets/img/profile.jpg" /var/www/html/assets/img/profile.jpg
sudo cp "/Users/juanalicea/Library/Mobile Documents/com~apple~CloudDocs/Cloud/Project Repositories/Terraform-Project/Website Project/cloud-resume/dist/assets/img/favicon.ico" /var/www/html/assets/img/favicon.ico

# Restart Apache to apply the changes
sudo systemctl restart httpd