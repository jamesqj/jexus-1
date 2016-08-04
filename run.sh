#!/bin/bash

docker run --name=jexus --restart=always -v /data/www/jexus:/data  -d -p 81:80 shiningrise/jexus:5.8.2
