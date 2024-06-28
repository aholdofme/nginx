FROM nginx:latest
EXPOSE 8080
COPY nginx.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off;"]
RUN service nginx status
USER 10006
