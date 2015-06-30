FROM debian:wheezy
MAINTAINER Julio César <j@juliocesar.io>

# install dependencies
RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install flask

# update working directories
ADD ./app /app

CMD chmod +x app/deploy.sh
CMD python app/app.py
