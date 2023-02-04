FROM nginx:mainline-alpine-slim

ENV DIR clash-dashboard

COPY ./dist/${DIR} /usr/share/nginx/html/

EXPOSE 80
