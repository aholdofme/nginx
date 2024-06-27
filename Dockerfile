FROM ubuntu:latest
RUN apt update -y && apt install -y nginx
EXPOSE 8080
COPY nginx.conf /etc/nginx/nginx.conf
RUN useradd -s /bin/false nginx
RUN /usr/sbin/nginx
RUN service nginx status
USER 10006
