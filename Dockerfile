FROM ubuntu
MAINTAINER Michael Petychakis <mpetyx@gmail.com>

RUN apt-get install -y python-pip
RUN apt-get install -y git
RUN apt-get install -y libpq-dev python-dev python-setuptools
RUN git clone https://github.com/mpetyx/open-I.git
RUN pip install virtualenv
RUN virtualenv --no-site-packages venv
RUN source venv/bin/activate
RUN pip install -r open-I/OPENiapp/requirements.txt

EXPOSE 8000
