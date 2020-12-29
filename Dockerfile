#Create a ubuntu base image with python 3 installed.
FROM python:3

#copy all the files
COPY ./src/app.py /usr/local/bin
COPY ./src/runsvdir /usr/local/bin

WORKDIR /usr/local/bin
RUN /bin/bash -c 'ls -la; chmod +x runsvdir; chmod +x app.py; ls -la'

RUN pip install flask

# ENTRYPOINT ["runsvdir", "/var/runit"]