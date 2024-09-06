#!/bin/bash

cd client

source ../.env

flutter build appbundle -t lib/main_prod.dart 
flutter run -d chrome \
  --dart-define=MODE=$MODE