#!/bin/bash

rm -rf server/dist

cd client
flutter clean
flutter pub get