FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

RUN chmod +x mvnw

RUN ./mvnw clean package -DskipTests

EXPOSE 8084

CMD ["java","-jar","target/ecommerceproject-0.0.1-SNAPSHOT.jar"]