sudo apt-get install -y git
sudo git clone https://github.com/callaunchpad/ml-docker.git /tmp/ml-docker
sudo cp -rva /home/ubuntu/.ssh /tmp/ml-docker/
sudo rm -r /home/ubuntu
sudo mv /tmp/ml-docker /home/ubuntu
sudo chown -R ubuntu /home/ubuntu/
