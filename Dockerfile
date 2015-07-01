FROM rocker/shiny
MAINTAINER Julian Vargas julian@miroculus.com

USER root
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && \
    sudo apt-get install curl htop git-core vim python python-virtualenv python-pip python-dev build-essential -y && \
    sudo pip install --upgrade pip && \
    sudo pip install --upgrade virtualenv && \
    apt-get install libcurl4-openssl-dev -y && \
    apt-get install r-base -y && \
    apt-get install libpq-dev postgresql-client -y && \
    apt-get install libssl-dev -y && \
    apt-get install libffi-dev libssl-dev -y && \
    apt-get install redis-server -y && \
    apt-get install -y libxml2-dev && \

    R -e 'install.packages("devtools",repos="http://cran.rstudio.com/"); library(devtools); install_github("miroculus/fitbitScraper");' && \

    pip install requests[security] && \
    pip install --upgrade pip && \
    pip install Django==1.8.1 && \
    pip install argparse==1.2.1 && \
    pip install django-easy-pjax==1.2.0 && \
    pip install django-material==0.3.0 && \
    pip install factory-boy==2.5.2 && \
    pip install psycopg2==2.6 && \
    pip install redis==2.10.3 && \
    pip install selenium==2.45.0 && \
    pip install six==1.9.0 && \
    pip install wsgiref==0.1.2 && \
    pip install git+https://github.com/syrusakbary/pyjade.git && \
    pip install mailchimp==2.0.9 && \
    pip install mixpanel==4.1.0 && \
    pip install django-fitbit==0.1.1 && \
    pip install django-extensions==1.5.5 && \
    pip install gunicorn==19.3.0 && \
    pip install Fabric==1.10.1 && \
    pip install supervisor==3.1.3 && \
    pip install fabric-slack-tools==0.1 && \
    pip install django-hstore==1.3.8 && \
    pip install dj-database-url==0.3.0 && \
    pip install PyYAML==3.11 && \
    pip install ua-parser==0.3.6 && \
    pip install user-agents==0.3.2 && \
    pip install django-user-agents==0.3.0 && \
    pip install python-memcached==1.54 && \
    pip install twilio==4.4.0 && \
    pip install django-phonenumber-field==0.7.2
