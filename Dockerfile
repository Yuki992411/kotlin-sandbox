FROM gradle:jdk17-jammy AS build

WORKDIR /app

COPY gradle/ gradle/
COPY gradlew .
COPY build.gradle.kts .
COPY settings.gradle.kts .

COPY src/ src/

RUN ./gradlew build

FROM gradle:jdk17-jammy

WORKDIR /app

COPY --from=build /app/build/libs/*-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
