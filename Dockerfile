FROM k8s.gcr.io/echoserver:1.10
RUN sed -i 's/listen 8080/listen [::]:PORT ipv6only=off/g' /etc/nginx/nginx.conf
ENV PORT 80
ENTRYPOINT sed -i "s/PORT/${PORT}/g" /etc/nginx/nginx.conf && /usr/local/bin/run.sh
