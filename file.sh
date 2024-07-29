apt-get update
apt-get install
apt-get install openjdk-17-jre-headless -y
apt-get install git
apt-get install docker.io -y
systemctl start docker
systemctl enable docker
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
systemctl start jenkins
systemctl enable jenkins

