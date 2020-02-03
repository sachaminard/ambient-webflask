FROM ubuntu
RUN apt-get -y update && \
    apt-get -y install python python-pip vim && \
    pip install flask
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0