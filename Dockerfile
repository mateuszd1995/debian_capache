FROM library/debian
MAINTAINER Mateusz Aleksander Duda <mateo.duda@hotmail.com>
RUN echo "nameserver 10.27.100.1" > /etc/resolv.conf && \
apt-get update && \
apt-get upgrade &&\
apt-get install -y apache2 &&\ 
rm -rf /var/www/html/* && \
service apache2 start && \
echo "<html><body><h1>Mateusz Aleksander Duda SIS2</h1></body></html>" >> /var/www/html/index.html
EXPOSE 80 443
CMD  ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
