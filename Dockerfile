FROM nginx:alpine

# >>> NGINX >>>
ARG HOST
ENV HOST ${HOST}
ARG PORT
ENV PORT ${PORT}
COPY nginx/nginx.conf /etc/nginx.conf
COPY nginx/templates/* /etc/nginx/templates/
# <<< NGINX <<<

# >>> SITE >>>
COPY site /usr/share/nginx/html
# <<< SITE <<<
