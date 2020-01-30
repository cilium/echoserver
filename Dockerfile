FROM k8s.gcr.io/echoserver:1.10
RUN sed -i 's/listen 8080/listen [::]:80 ipv6only=off/g' /etc/nginx/nginx.conf
