FROM nginx:latest
EXPOSE 8443
COPY nginx.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off;"]
RUN service nginx status
USER 10006
