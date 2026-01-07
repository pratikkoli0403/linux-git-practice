FROM ubuntu:22.04

COPY test.sh /test.sh
RUN chmod +x /test.sh

CMD ["/test.sh"]
