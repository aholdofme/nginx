FROM ubuntu:latest
RUN apt update -y && apt install -y nginx
EXPOSE 8080
COPY nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT ["/usr/sbin/nginx"]
RUN whereis nginx
USER 10006
