# Quem criou o arquivo
FROM nginx:latest
LABEL maintainer="Gustavo De Longhi <gustavodelonghi@gmail.com>"

# Copia um novo index.html para a pasta padrão do Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expõe a porta padrão do Nginx
EXPOSE 80