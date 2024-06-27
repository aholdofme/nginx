FROM ubuntu:latest
RUN apt update -y && apt install -y nginx
EXPOSE 8080
COPY nginx.conf /etc/nginx/nginx.conf
RUN /usr/sbin/nginx
USER 10006
