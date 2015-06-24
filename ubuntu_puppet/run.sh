#!/bin/bash

docker run -i -t  -p 80:80 --name $1 core/ubuntu_puppet /bin/bash  
