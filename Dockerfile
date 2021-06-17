FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3-pip python-dev build-essential
COPY . .
WORKDIR . 
RUN pip install -r requirements.txt
CMD export FLASK_APP=js_example && flask run