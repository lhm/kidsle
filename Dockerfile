FROM python:2.7
ENV PYTHONUNBUFFERED 1

RUN apt-get update && \
    apt-get install -y nodejs nodejs-legacy npm

RUN npm install -g less

RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
