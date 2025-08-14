FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY ./Netflix-Clone /usr/share/nginx/html/
