FROM alpine:3.12.12

COPY bin/wsserver      /wsserver

RUN chmod +x /wsserver 
EXPOSE 8080

CMD [ "/wsserver" ]
