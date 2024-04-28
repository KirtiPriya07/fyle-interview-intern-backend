# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster

WORKDIR /fyle-app

COPY requirements.txt ./
COPY run.sh ./
COPY pytest.ini ./
COPY gunicorn_config.py ./
COPY .coveragerc ./

COPY ./core ./core
COPY ./tests ./tests


RUN pip install -r requirements.txt
RUN rm core/store.sqlite3
RUN export FLASK_APP=core/server.py

EXPOSE 3000


CMD [ "bash", "run.sh" ]