# jexus A asp.net webserver in linux

Jexus V5.8.2 Beta1 64位独立版 

镜像大小 232.8 MB
 
latest Version images size is only 169.6 MB

http://linuxdot.net/
 
# How to run

docker run --name=jexus --restart=always -d -p 81:80 jexus

docker run --name=jexus --restart=always -v /data/www/jexus:/data  -d -p 81:80 jexus

docker run --name=jexus --restart=always -v /data/www/jexus:/data  -d -p 81:80 shiningrise/jexus:5.8.2

docker run --name=jexus --restart=always -v /data/www/jexus:/data  -d -p 81:80 registry.cn-hangzhou.aliyuncs.com/shiningrise/jexus:5.8.2
