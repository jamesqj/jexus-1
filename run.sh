#!/bin/bash
docker run --name=jexus --restart=always -v /data/www/jexus:/data  -d -p 81:80 registry.cn-hangzhou.aliyuncs.com/shiningrise/jexus:5.8.2
