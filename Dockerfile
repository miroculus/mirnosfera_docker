FROM ubuntu
MAINTAINER Julian Vargas julian@miroculus.com

USER root
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y
RUN sudo apt-get install curl htop git-core vim python python-virtualenv python-pip python-dev build-essential -y
RUN sudo pip install --upgrade pip
RUN sudo pip install --upgrade virtualenv
RUN apt-get install libcurl4-openssl-dev -y
RUN apt-get install r-base -y

RUN apt-get install libssl-dev -y
RUN apt-get install libffi-dev libssl-dev -y
RUN apt-get install redis-server -y
RUN apt-get install -y libxml2-dev

RUN echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list && \
    gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9 && \
    gpg -a --export E084DAB9 | sudo apt-key add -

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install r-base -y

RUN R -e 'install.packages("devtools",repos="http://cran.rstudio.com/"); library(devtools); install_github("miroculus/fitbitScraper");'

RUN pip install requests[security]
RUN pip install --upgrade pip
RUN pip install Django==1.8.1
RUN pip install argparse==1.2.1
RUN pip install django-easy-pjax==1.2.0
RUN pip install django-material==0.3.0
RUN pip install factory-boy==2.5.2

RUN apt-get install postgresql-client -y
RUN apt-get install libpq-dev -y

RUN pip install psycopg2==2.6
RUN pip install redis==2.10.3
RUn pip install selenium==2.45.0
RUN pip install six==1.9.0
RUN pip install wsgiref==0.1.2
RUN pip install git+https://github.com/syrusakbary/pyjade.git
RUN pip install mailchimp==2.0.9
RUN pip install mixpanel==4.1.0
RUN pip install django-fitbit==0.1.1
RUN pip install django-extensions==1.5.5
RUN pip install gunicorn==19.3.0
RUN pip install Fabric==1.10.1
RUN pip install supervisor==3.1.3
RUN pip install fabric-slack-tools==0.1
RUN pip install django-hstore==1.3.8
RUN pip install dj-database-url==0.3.0
RUN pip install PyYAML==3.11
RUN pip install ua-parser==0.3.6
RUN pip install user-agents==0.3.2
RUN pip install django-user-agents==0.3.0
RUN pip install python-memcached==1.54
RUN pip install twilio==4.4.0
RUN pip install django-phonenumber-field==0.7.2
RUN pip install django-settings-export==1.0.5
