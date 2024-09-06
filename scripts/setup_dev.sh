#!/bin/bash

cd server && poetry install
cd ../
cd client && flutter pub get