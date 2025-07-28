FROM tiangolo/nginx-rtmp:latest

RUN apt-get update && apt-get install -y gettext && rm -rf /var/lib/apt/lists/*

COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY starter-nginx.sh /starter-nginx.sh
RUN chmod +x /starter-nginx.sh

CMD ["/starter-nginx.sh"]
