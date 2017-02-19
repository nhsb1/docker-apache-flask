FROM ubuntu:16.04
ENV PATH /:$PATH
RUN apt-get update -y
RUN apt-get install -y apache2
RUN apt-get install -y libapache2-mod-wsgi
RUN a2enmod wsgi
RUN mkdir /var/www/FlaskApp
RUN mkdir /var/www/FlaskApp/FlaskApp
RUN mkdir /var/www/FlaskApp/FlaskApp/static
RUN mkdir /var/www/FlaskApp/FlaskApp/templates
COPY __init__.py /var/www/FlaskApp/FlaskApp/__init__.py
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y python-pip
RUN pip install Flask
COPY FlaskApp.conf /etc/apache2/sites-available/FlaskApp.conf
RUN a2ensite FlaskApp
run service apache2 start
COPY flaskapp.wsgi /var/www/FlaskApp/flaskapp.wsgi
RUN service apache2 restart
RUN rm -rf /etc/apache2/sites-available/000-default.conf
RUN rm -rf /etc/apache2/sites-enabled/000-default.conf
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
EXPOSE 80
EXPOSE 443
ENTRYPOINT /docker-entrypoint.sh
