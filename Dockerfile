FROM ubuntu:22.04

WORKDIR /app

COPY test.sh /app/test.sh
RUN chmod +x /app/test.sh

CMD ["/app/test.sh"]
