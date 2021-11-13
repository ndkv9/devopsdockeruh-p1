# get Java 8 from official image and README
FROM openjdk:8

WORKDIR /usr/src/app

# default port from README
EXPOSE 8080

# copy files from host to image
COPY . .

# build the project
RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
