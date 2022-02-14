#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html



 #!/bin/bash

  sudo yum -y update
  sudo yum install java-1.8.0-openjdk-devel  	#install JDK 8
  java -version
  cd /usr/local
  wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.37/bin/apache-tomcat-9.0.37.tar.gz
  tar -xvf apache-tomcat-9.0.37.tar.gz
  mv apache-tomcat-9.0.37.tar.gz tomcat9
  echo "export CATALINA_HOME="/usr/local/tomcat9"" >> ~/.bashrc
  source ~/.bashrc
  cd /usr/local/tomcat9/bin
  ./startup.sh 
  vi /usr/local/tomcat9/conf/tomcat-users.xml 
  <role rolename="manager-gui"/>
  <user username="saurabh" password="saurabh" roles="manager-gui"/>
  <role rolename="admin-gui"/>
   <user username="admin" password="adm!n" roles="admin-gui"/>
