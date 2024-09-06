#!/bin/bash

# change directory to client folder
cd /home/node/client

# build web
../flutter/bin/flutter build web

# copy build folder into server
cp -r ./build/web ../server/dist