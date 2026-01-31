# Jenkins Server Setup in Linux VM

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

## STEP-3: Install Jenkins

~~~
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
~~~

## STEP-4: Start Jenkins

~~~
sudo systemctl enable jenkins
sudo systemctl start jenkins
~~~

## STEP-5: Verify Jenkins

~~~
sudo systemctl status jenkins
~~~

## STEP-6 : Open jenkins server in browser using VM public ip

~~~
http://public-ip:8080/
~~~

## STEP-7 : Copy jenkins admin pwd

~~~
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
~~~

## STEP-8 : Create Admin Account & Install Required Plugins in Jenkins