# compila el codigo y genera el jar

mvn clean package -DskipTests


# analisis SAST

mvn clean verify -DskipTests org.sonarsource.scanner.maven:sonar-maven-plugin:sonar \
  -Dsonar.login=squ_08fc574ffe2d3f8775ec96eb086e0718feed6f02 \
  -Dsonar.host.url=https://sonarqube.business-litethinking.com


# construccion de la imagen

docker build . -t equipos:5

# correr el contenedor

docker run --name equipo1 -d -p 8080:8080 equipos:1

docker run --name equipo2 -d -p 8082:8080 equipos:3

# docker compose

docker compose up -d

# tagging a la imagen

docker tag equipos:5 mauron/equipos:5

# auth + subir la imagen
docker login
docker push mauron/equipos:5