FROM nginx:mainline-alpine-slim

ENV DIR clash-dashboard

COPY ./${DIR}/dist /usr/share/nginx/html/

EXPOSE 80
