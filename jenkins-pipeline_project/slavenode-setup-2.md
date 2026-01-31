# Create User in Jenkins Slave Machine & Create SSH Keys 

## step-1: create user

~~~
useradd devopsadmin -s /bin/bash -m -d /home/devopsadmin
~~~
~~~
su - devopsadmin
~~~

## step-2: Generate SSH Key

~~~
ssh-keygen -t ecdsa -b 521
~~~

~~~
ls ~/.ssh 
~~~

## Following 2 file will visible

1. id_ecdsa - private key
2. id_ecdsa.pub - public

## step-3: Copy the file content

~~~
cat id_ecdsa.pub > authorized_keys
~~~

## step-4: Provide Permission

~~~
chmod 600 /home/devopsadmin/.ssh/*
~~~

## step-5: Login to Jenkins - Manage Jenkins - Attach the Slave Node to jenkins Master

- Goto to Manage Jenkins 
- Select Nodes 
- On Nodes Dashboard, Click on New Node
- Give Node Name, and choose permanent agent.