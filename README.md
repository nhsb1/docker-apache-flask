# docker-apache-flask
Dockerfile for Apache Flask build
Dockerfile with related build files.
Builds out a Docker container from Ubuntu 16.05 LTS official, installs Apache, Python 2.7, and Flask and sets-up up a demo "Hello Word" site running under the Flask microframework.

Do a "docker pull nhsb1/docker-apache-flask" to run this.

Or To build it yourself:
Get the files contained in this repo, put them in one subdirectory, then build them locally and run it.  
wget https://raw.githubusercontent.com/nhsb1/docker-apache-flask/master/Dockerfile  
wget https://raw.githubusercontent.com/nhsb1/docker-apache-flask/master/FlaskApp.conf  
wget https://raw.githubusercontent.com/nhsb1/docker-apache-flask/master/__init__.py  
wget https://github.com/nhsb1/docker-apache-flask/raw/master/docker-entrypoint.sh  
wget https://raw.githubusercontent.com/nhsb1/docker-apache-flask/master/flaskapp.wsgi  
sudo docker build -t youtdockerhubaccount/apache_flask .
sudo docker run -d --name apache_flask -v /host_directory_to_mount_in_container:/path_tobe_mounted_in_container -net=host youtdockerhubaccount/apache_flask  

Now that you've got it built and running, do a "sudo docker ps" to show it, find the host's IP address ("ip addr") and try loading it in a web browser (http://ipaddressofyourhost).  







