#!/bin/bash

cd client

source ../.env

flutter build appbundle -t lib/main_prod.dart 
flutter run -d chrome \
  --dart-define=SERVER_URL=$SERVER_URL \
  --web-port 3000 \
  --web-browser-flag "--disable-web-security"  # this line will get around local cors issues