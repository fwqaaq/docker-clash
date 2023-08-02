FROM nginx:mainline-alpine-slim

ENV Dashboard clash-dashboard
ENV Yacd yacd
ENV Github .github

COPY ./${Dashboard}/dist /usr/share/nginx/dashboard/
COPY ./${Yacd}/public /usr/share/nginx/yacd/ 
COPY ./${Github}/config /etc/nginx/conf.d/

VOLUME /user/share/nginx

EXPOSE 8888 8080
