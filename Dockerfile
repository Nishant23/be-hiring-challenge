FROM python:3.7-slim

WORKDIR /datapane

COPY . .

RUN pip install -r requiremnets.txt

WORKDIR /datapane/api_server

RUN python manage.py migrate

EXPOSE 8000