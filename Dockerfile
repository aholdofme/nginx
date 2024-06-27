FROM nginx:mainline-alpine-slim
USER 10006
RUN apk update && apk add nginx
EXPOSE 8080
COPY nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT ["/usr/sbin/nginx"]
RUN service nginx status
RUN whereis nginx
