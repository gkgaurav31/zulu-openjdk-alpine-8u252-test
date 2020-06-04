FROM azul/zulu-openjdk-alpine:8u252

RUN apk update

RUN echo "root:Docker!" | chpasswd 

COPY app.jar /home/site/wwwroot/

COPY init.sh /home/

WORKDIR /home/site/wwwroot
EXPOSE 8080 2222
ENTRYPOINT /home/init.sh

RUN mkdir -p /home/site/wwwroot
COPY app.jar /home/site/wwwroot
