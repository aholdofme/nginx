FROM nginx:latest
# EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf
# RUN service nginx status
RUN adduser \
  --disabled-password \
  --gecos "" \
  --home "/nonexistent" \
  --shell "/sbin/nologin" \
  --no-create-home \
  --uid 10006 \
  "choreo"
# Use the above created unprivileged user
USER 10006
CMD ["nginx", "-g", "daemon off;"]
