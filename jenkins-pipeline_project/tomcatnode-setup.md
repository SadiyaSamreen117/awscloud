# Tomcat Server Setup in Linux VM

## STEP-1: Create a Linux VM

- Create Ubuntu VM using AWS EC2 (t2.medium)
- Enable 8080 Port Number in Security Group Inbound Rules
- Connect to VM using MobaXterm

## STEP-2: Install Java

~~~
sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version
~~~

~~~
cd /opt/
~~~

## STEP-3: Install Tomcat

~~~
wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz
~~~

## STEP-4: Umzip the file using below command

~~~
tar -xvzf /opt/apache-tomcat-8.5.99.tar.gz
~~~

## STEP-5: Use below commands

~~~
mv apache-tomcat-8.5.99 tomcat
~~~

~~~
cd tomcat/bin/
~~~

~~~
./startup.sh
~~~

## ./startup.sh ==> used to start the tomcat server

## STEP-5: Open tomcat server in browser using VM public ip

~~~
http://<Public_IP_Address>:8080/
~~~

## Follow slavenode-setup-2.md to create user and post installation setup

## After that make devopsadmin user as a owner to tomcat dir :

~~~
chown -R devopsadmin /opt/tomcat
~~~

## Install Publish Over SSH Plugin in Jenkins Master.
## Publish Over SSH Plugin is used to copy the artifacts from Jenkins Slave Node to Tomcat Server

## Login to Jenkins - Manage Jenkins - System - Attach the Tomcat Node to jenkins Master

