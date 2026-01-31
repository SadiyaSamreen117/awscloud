# Jenkins server setup in Linux VM

## STEP-1: Create a Linux VM

- Create Ubuntu VM using AWS EC2 (t2.medium)
- Connect to VM using MobaXterm

## STEP-2: Install Java

~~~
sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version
~~~

## STEP-3: Install GIT

~~~
sudo apt install git -y			
git --version 
~~~

## STEP-4: Install Maven

~~~
sudo apt install maven -y 
mvn --version
~~~


