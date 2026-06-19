# compila el codigo y genera el jar

mvn clean package -DskipTests

# construccion de la imagen

docker build . -t equipos:4

# correr el contenedor

docker run --name equipo1 -d -p 8080:8080 equipos:1

docker run --name equipo2 -d -p 8082:8080 equipos:3

# docker compose

docker compose up -d

# tagging a la imagen

docker tag equipos:4 mauron/equipos:4

# auth + subir la imagen
docker login
docker push mauron/equipos:4