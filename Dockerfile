FROM tiangolo/uwsgi-nginx-flask:flask-python3.5

MAINTAINER Alex Zhang <zalex@cynovo.com>

COPY requirements.txt /app

#COPY requirements/ /app

RUN apt-get update \
    && apt-get install -y python3-dev libmysqlclient-dev \
    && pip install -r requirements.txt
