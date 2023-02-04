FROM nginx:mainline-alpine-slim

ENV DIR clash-dashboard

COPY ./${DIR}/dist /usr/share/nginx/html/

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80

CMD ["nginx" "-g" "daemon off;"]
