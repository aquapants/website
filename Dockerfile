FROM nginx:alpine

# >>> NGINX >>>
ARG PORT
COPY nginx.conf.template /tmp/nginx.conf.template
RUN envsubst < /tmp/nginx.conf.template > /etc/nginx/nginx.conf
# <<< NGINX <<<

# >>> SITE >>>
COPY site /usr/share/nginx/html
# <<< SITE <<<
