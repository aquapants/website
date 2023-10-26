FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY site /usr/share/nginx/html
EXPOSE 80