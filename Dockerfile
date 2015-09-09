FROM ubuntu:14.04.2

ENV DEBIAN_FRONTEND=noninteractive

COPY 90AlwaysYes /etc/apt/apt.conf.d/90AlwaysYes

RUN apt-get update
RUN apt-get install python-pip
RUN apt-get install python-dev
RUN apt-get install build-essential
RUN apt-get install libffi-dev
RUN apt-get install libssl-dev
RUN apt-get install libxml2-dev
RUN apt-get install libxslt1-dev

RUN pip install mitmproxy

RUN echo "LANG=en_US.UTF-8" >> /etc/environment

COPY autorun.sh /bin/autorun.sh
RUN chmod 777 /bin/autorun.sh

EXPOSE 8080

CMD ["/bin/autorun.sh"]
	


