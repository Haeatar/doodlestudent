cd api/
./mvnw package
docker build -f src/main/docker/Dockerfile.jvm -t doodlebackend .
cd ..

cd front/
docker build -t doodlefront .
