#!/bin/bash
sudo apt update

sudo apt install openjdk-17-jdk-headless -y

sudo apt update
sudo apt install maven -y

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null


sudo apt-get update
sudo apt-get install jenkins -y

sudo systemctl enable jenkins
sudo systemctl status jenkins