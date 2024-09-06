FROM sunpeek/poetry:py3.11-slim
# NOTE: Node.js commands can be run in development, but not in production


WORKDIR /home/node
COPY . .


RUN apt-get update -y
RUN apt-get upgrade -y

# ################################################################################
# # SET UP CLIENT (Flutter)
# ################################################################################

# install dependencies
RUN apt-get install -y git curl unzip xz-utils zip libglu1-mesa

# clone flutter 
RUN git clone https://github.com/flutter/flutter.git -b stable

# # upgrade flutter
RUN flutter/bin/flutter upgrade

# # build client
RUN scripts/build_client.sh

################################################################################
# SET UP SERVER (Flask)
################################################################################

# install server dependencies
RUN scripts/install_server_dependencies_production.sh

EXPOSE 80

CMD ["scripts/start_production.sh"]
