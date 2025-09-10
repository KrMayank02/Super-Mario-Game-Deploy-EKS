#!/bin/bash

#### Install Docker ####
sudo apt-get update -y
sudo apt-get install docker.io -y
sleep 15
sudo usermod -aG docker $USER
newgrp docker
sudo chmod 777 /var/run/docker.sock

#### Install kubectl ####
sudo apt-get update -y
sudo apt-get install curl -y
curl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
sleep 15

#### Install AWS CLI ####
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt-get install unzip -y
unzip awscliv2.zip
sudo ./aws/install
sleep 15

#### Install Terraform ####
sudo apt-get install wget -y
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt-get update && sudo apt-get install terraform -y
sleep 15

docker --version
kubectl version --client
aws --version
terraform --version

echo "Installation Completed Successfully!!"
