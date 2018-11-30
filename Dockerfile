FROM ubuntu:latest

COPY . /

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y python3 && \
    apt-get install -y python3-pip && \
    apt-get install -y unixodbc-dev && \
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && \
    apt-get install -y libssl-dev && \
    apt-get install -y libssl1.0.0 && \
    ACCEPT_EULA=Y apt-get install -y msodbcsql17 && \
    pip3 install -r requirements.txt

ENV FLASK_APP=application.py
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

EXPOSE 8080

ENTRYPOINT python3 -m flask run --host=0.0.0.0 --port=8080