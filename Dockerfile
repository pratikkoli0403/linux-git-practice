FROM ubuntu:22.04

RUN apt update && apt install -y netcat-openbsd

WORKDIR /app

COPY test.sh /app/test.sh
RUN chmod +x /app/test.sh

EXPOSE 80

CMD ["/app/test.sh"]
