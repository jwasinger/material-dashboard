#! /bin/bash

yum update -y
yum install -y ruby
yum install -y wget

# set up the CodeDeploy agent
cd /tmp/
wget https://aws-codedeploy-us-west-2.s3.amazonaws.com/latest/install
chmod +x /tmp/install
/tmp/install auto

# install NodeJS
wget http://nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz -P /tmp/
tar --strip-components 1 -xzvf node-v* -C /usr/local

npm install -g bower bower-move

# Set up the user and directory for the NodeJS application
mkdir /app
useradd -d /app web-app