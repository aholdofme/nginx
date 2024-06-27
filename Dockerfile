FROM ubuntu:latest
USER 10006
RUN apt update -y && apt install -y nginx
EXPOSE 8080
COPY nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT ["/usr/sbin/nginx"]
RUN service nginx status
RUN whereis nginx
