FROM ubuntu
MAINTAINER Michael Petychakis <mpetyx@gmail.com>

RUN apt-get install -y python-pip
RUN apt-get install -y git
RUN apt-get install -y libpq-dev python-dev 
RUN git clone https://github.com/OPENi-ict/api-framework.git
#RUN pip install virtualenv
#RUN virtualenv --no-site-packages venv
#RUN /bin/bash/source venv/bin/activate
RUN pip install -r api-framework/OPENiapp/requirements.txt

EXPOSE 8000
