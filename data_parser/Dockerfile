FROM python:3.8-slim

RUN apt-get update && apt-get upgrade

COPY requirements.txt .
COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8888

WORKDIR /app

CMD bash