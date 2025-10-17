FROM ubuntu:25.04
RUN apt-get update -qq
RUN apt-get install -y nginx curl
COPY start.sh /
RUN chmod +x /start.sh
EXPOSE 80
CMD [ "/start.sh" ]