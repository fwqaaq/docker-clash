FROM nginx:mainline-alpine-slim

ENV DIR clash-dashboard

COPY ./${DIR}/dist /usr/share/nginx/html/

EXPOSE 80

STOPSIGNAL SIGQUIT

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD [ "nginx","-g","daemon off;" ]