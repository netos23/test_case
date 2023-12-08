FROM python:3.11.0-buster

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow

RUN apt-get update

ENV LANG=C.UTF-8
ENV LANGUAGE=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y locales

RUN apt install -y libpq-dev postgresql postgresql-contrib
RUN rm -rf /var/lib/apt/lists/*
RUN mkdir /code


COPY ./requirements.txt /tmp/
RUN python3 -m pip install -r /tmp/requirements.txt

COPY ./uwsgi/uwsgi.ini /etc/
COPY ./core/ /code/

WORKDIR /code/

RUN chmod +x ./run.sh

CMD ./run.sh

