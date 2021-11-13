FROM ubuntu:18.04

RUN apt-get update -y && apt-get install curl -y

WORKDIR /usr/src/app

COPY curler.sh .

RUN chmod 755 curler.sh

CMD ["./curler.sh"]


