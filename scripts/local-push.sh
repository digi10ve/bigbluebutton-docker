#!/bin/bash

# create local private registry
docker run -d -p 5000:5000 --name registry registry:2

# local images push to registry
docker tag alangecker/bbb-docker-recordings:v2.5.5 localhost:5000/bbb-docker-recordings:v2.5.5
docker tag alangecker/bbb-docker-apps-akka:v2.5.5 localhost:5000/bbb-docker-apps-akka:v2.5.5
docker tag alangecker/bbb-docker-fsesl-akka:v2.5.5 localhost:5000/bbb-docker-fsesl-akka:v2.5.5
docker tag alangecker/bbb-docker-nginx:1.21-v4.0.0-v2.5.5 localhost:5000/bbb-docker-nginx:1.21-v4.0.0-v2.5.5
docker tag alangecker/bbb-docker-periodic:v2.5.0-rc.1 localhost:5000/bbb-docker-periodic:v2.5.0-rc.1
docker tag alangecker/bbb-docker-jodconverter:latest localhost:5000/bbb-docker-jodconverter:latest
docker tag alangecker/bbb-docker-webrtc-sfu:v2.8.5 localhost:5000/bbb-docker-webrtc-sfu:v2.8.5
docker tag alangecker/bbb-docker-html5:v2.5.5 localhost:5000/bbb-docker-html5:v2.5.5
docker tag alangecker/bbb-docker-web:v2.5.5 localhost:5000/bbb-docker-web:v2.5.5
docker tag alangecker/bbb-docker-pads:v1.2.1 localhost:5000/bbb-docker-pads:v1.2.1
docker tag alangecker/bbb-docker-etherpad:1.8.18-3 localhost:5000/bbb-docker-etherpad:1.8.18-3
docker tag alangecker/bbb-docker-freeswitch:v2.5.0 localhost:5000/bbb-docker-freeswitch:v2.5.0

docker push localhost:5000/bbb-docker-recordings:v2.5.5
docker push localhost:5000/bbb-docker-periodic:v2.5.0-rc.1
docker push localhost:5000/bbb-docker-jodconverter:latest
docker push localhost:5000/bbb-docker-apps-akka:v2.5.5
docker push localhost:5000/bbb-docker-fsesl-akka:v2.5.5
docker push localhost:5000/bbb-docker-nginx:1.21-v4.0.0-v2.5.5
docker push localhost:5000/bbb-docker-webrtc-sfu:v2.8.5
docker push localhost:5000/bbb-docker-html5:v2.5.5
docker push localhost:5000/bbb-docker-web:v2.5.5
docker push localhost:5000/bbb-docker-pads:v1.2.1
docker push localhost:5000/bbb-docker-etherpad:1.8.18-3
docker push localhost:5000/bbb-docker-freeswitch:v2.5.0
