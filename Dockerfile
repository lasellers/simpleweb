# sudo docker build . -f Dockerfile -t simpleweb:2
# sudo docker build . -t simpleweb:2
# sudo docker run --rm -i -t --name simpleweb -p 80:80 simpleweb:2
# sudo docker stop simpleweb
# sudo docker rm simpleweb
FROM nginx:latest

RUN mkdir -p /var/www/html
WORKDIR /var/www/html
COPY ./web/ ./
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
