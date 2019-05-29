FROM nginx
MAINTAINER yongs2 yongs2@hotmail.com

USER root

RUN apt-get update \
	&& apt-get -y install git

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

RUN cd /usr/share/nginx/html \
	&& rm -f /usr/share/nginx/html/index.html \
	&& git clone https://github.com/kevingilboy/Advanced-Service-Editor \
	&& cp -Rp /usr/share/nginx/html/Advanced-Service-Editor/* /usr/share/nginx/html/

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
