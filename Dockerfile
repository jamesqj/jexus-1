FROM ubuntu:14.04.4
MAINTAINER shiningrise shiningrise@gmail.com

RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
	&& docker-php-ext-install gd mysqli opcache

RUN apt-get update && \
        apt-get install -y --force-yes wget && \
		rm -rf /var/lib/apt/lists/* \
	
#http://linuxdot.net/down/jexus-5.8.2-x64.tar.gz
RUN cd /tmp && wget linuxdot.net/down/jexus-5.8.2-x64.tar.gz && tar -zxvf jexus-5.8.2-x64.tar.gz && mv jexus /usr  && cd /tmp && rm -rf jexus*

RUN mkdir /data
RUN  sed -i "s/root=\/ \/var\/www\/default/root=\/ \/data/g" /usr/jexus/siteconf/default
#RUN sed -i  's/jws_status_val=`ps -p $pid | grep $pid | wc -l`/jws_status_val=`ps -ef| grep jws.exe| wc -l`/g' /usr/jexus/jws
#VOLUME ["/data"]
EXPOSE 80 443

RUN chmod a+x /usr/jexus/jwss
CMD  /usr/jexus/jwss 
#>/tmp/err.txt 2>&1
#& /usr/jexus/jws start