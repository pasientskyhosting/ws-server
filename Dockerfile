FROM alpine:3.14

COPY bin/wsserver      /wsserver

RUN chmod +x /wsserver 
EXPOSE 8080

CMD [ "/wsserver" ]
