FROM python:3.7-alpine
MAINTAINER Indresh kumar

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

#security purpose, limiting the scope for executing the program
RUN adduser -D user
USER user





