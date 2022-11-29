docker buildx create --name mybuilder --driver docker-container --bootstrap --use
docker buildx build --pull --platform linux/amd64,linux/arm64,linux/armhf -t vparanoiaque/cordova-snap:latest . --push
