# Flutter-Flask Boilerplate

This boilerplate contains both a Flutter project and a Flask app: the Flask app
acts as the API/backend and the Flutter project will build as the frontend.

### SETUP:

- make sure you have flutter installed on your computer
- make sure you have poetry installed on your computer
- run `sh scripts/setup_dev.sh` to install flutter and poetry dependencies

### RUN DEV

- run the backend (Flask) with `sh scripts/start_dev_server.sh`
- run the frontend (Flutter) with `sh scripts/start_dev_client.sh`

In order to use the Flutter hot-reload (by entering "r" in the terminal after
starting), these two commands must be run in different terminals. If Flutter
ever releases an update for hot-reloading on save, these two commands could be
combined.

### BUILD

The `Dockerfile` has everthing you need to build a Docker image and host the
app. The quick version is that the Dockerfile uses an image with poetry already
installed, flutter is installed, the frontend is build and the result is copied
into the Flask server, and finally - the server starts.

### NOTES

I tested the deployment using Railway (https://railway.app/) and it works great.
I have not tested this on any other service (like Azure App Service), but
because its Dockerized, it should run just the same.
