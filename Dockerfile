FROM java

RUN ./mvnw package

CMD java -jar target/*.jar
