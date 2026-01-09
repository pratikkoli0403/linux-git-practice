#!/bin/bash
echo "Starting web app on port 80"
while true
do
  echo -e "HTTP/1.1 200 OK\n\nDevops App Running on EC2" | nc -l -p 80
done
