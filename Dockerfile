FROM nginx:latest
LABEL maintainer="Gustavo De Longhi <gustavodelonghi@gmail.com>"

RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
    rm -rf /usr/share/nginx/html/index.html

COPY atividade.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

