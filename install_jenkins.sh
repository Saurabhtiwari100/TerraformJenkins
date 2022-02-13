#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html



# #!/bin/bash
# #sudo yum -y update

# #echo "Install Java JDK 8"
# #yum remove -y java
# #yum install -y java-1.8.0-openjdk

# #echo "Install Maven"
# yum install -y maven 

# echo "Install git"
# yum install -y git

# echo "Install Docker engine"
# yum update -y
# yum install docker -y
# #sudo usermod -a -G docker jenkins
# #sudo service docker start
# sudo chkconfig docker on

# echo "Install Jenkins"
# wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
# rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
# yum install -y jenkins
# sudo usermod -a -G docker jenkins
# sudo chkconfig jenkins on
# sudo service docker start
# sudo service jenkins start

