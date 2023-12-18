FROM nginx:alpine

# >>> NGINX >>>
ARG HOST
ARG PORT
COPY nginx/templates/nginx.conf /etc/nginx/templates
# <<< NGINX <<<

# >>> SITE >>>
COPY site /usr/share/nginx/html
# <<< SITE <<<
