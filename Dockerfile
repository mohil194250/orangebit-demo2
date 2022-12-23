FROM nginx
USER root
COPY index.html /usr/share/nginx/html
EXPOSE 80
