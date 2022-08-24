FROM diddledan/snapcraft:core22

ENV SNAPCRAFT_BUILD_ENVIRONMENT=host

RUN apt update -qq -y && \
    apt install -y curl g++ gcc git lsb-release make && \
    echo "deb https://deb.nodesource.com/node_18.x $(lsb_release -cs) main" >> /etc/apt/sources.list.d/nodesource.list && \
    curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    apt update -qq -y && \
    apt -y install nodejs && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g cordova
