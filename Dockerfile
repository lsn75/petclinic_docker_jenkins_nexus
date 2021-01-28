FROM maven:3.6.3-openjdk-16-slim AS builder

WORKDIR /petclinic

COPY . /petclinic

RUN mvn package



FROM openjdk:8-jre-alpine3.9

WORKDIR /root/

COPY --from=builder /petclinic/target/*.jar ./petclinic.jar

EXPOSE 8080/tcp

CMD ["java", "-jar", "./petclinic.jar"]
