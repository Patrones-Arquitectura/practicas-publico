FROM eclipse-temurin:11-jdk-alpine AS builder
WORKDIR /opt/app/
# La carpeta src debe contener los fuentes de la aplicación y debe estar al mismo nivel de filesystem que el Dockerfile
COPY src src
COPY gradle gradle
COPY build.gradle settings.gradle gradlew ./
RUN ./gradlew assemble

FROM eclipse-temurin:11-jre-alpine AS runtime
COPY --from=builder /opt/app/build/libs/ejercicio1-0.0.1-SNAPSHOT.jar /opt/app.jar
ENTRYPOINT java -jar /opt/app.jar
