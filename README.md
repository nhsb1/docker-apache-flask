# docker-apache-flask
Dockerfile with related build files.  
Builds a Docker container from Ubuntu 16.04 LTS official (https://hub.docker.com/_/ubuntu/), installs Apache, Python 2.7, Flask, and realted files, and sets-up up a demo "Hello Word" site running under the Flask microframework (/var/www/FlaskApp).  

Quickstart:  
Assumes you've already installed Docker (https://docs.docker.com/engine/installation/linux/ubuntu/)  
"$ docker pull nhsb1/docker-apache-flask"  
"$ sudo docker run -d --name apache_flask --net=host nhsb1/docker-apache-flask  


Or To build it yourself:  
Get the files contained in this repo, put them in one subdirectory, then build them locally and run it.   
<img width="152" alt="apacheflashrunning" src="https://cloud.githubusercontent.com/assets/12847315/23138683/bbe165c4-f776-11e6-8f64-354438cb6511.png">

Get the raw files:  
wget https://raw.githubusercontent.com/nhsb1/docker-apache-flask/master/Dockerfile  
wget https://raw.githubusercontent.com/nhsb1/docker-apache-flask/master/FlaskApp.conf  
wget https://raw.githubusercontent.com/nhsb1/docker-apache-flask/master/__init__.py  
wget https://github.com/nhsb1/docker-apache-flask/raw/master/docker-entrypoint.sh  
wget https://raw.githubusercontent.com/nhsb1/docker-apache-flask/master/flaskapp.wsgi 

Build the container using the files you just downloaded locally:  
sudo docker build -t youtdockerhubaccount/apache_flask .

Run the container you just built locally:  
sudo docker run -d --name apache_flask -v /host_directory_to_mount_in_container:/path_tobe_mounted_in_container -net=host yourdockerhubaccount/apache_flask  

Explanation of the run command:  
Run the container with a short-name (apache_flask), detached (-d), mounting a directory (/host_directory_to_mount_in_container) from your host (the machine running docker),  to a directory inside your container (/path_tobe_mounted_in_container), using the host's network adapter (--net=host), with the local build your just created (yourdockerhubaccount/apache_flask).

Now that you've got it built and running.  
Do a "sudo docker ps" to show it, find the host's IP address ("ip addr") and try loading it in a web browser (http://ipaddressofyourhost).  







