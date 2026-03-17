FROM ubuntu:latest

RUN apt-get update && apt-get install -y dante-server libpam-pwdfile

COPY ./config/danted.conf /etc/danted.conf
COPY ./config/pam.d/sockd /etc/pam.d/sockd

EXPOSE 1080/tcp

CMD ["danted"]
