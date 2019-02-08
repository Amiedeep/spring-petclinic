FROM java

WORKDIR /app
COPY . /app/
RUN ./mvnw package

FROM java
EXPOSE 8080
COPY --from=0 target/*.jar .

CMD java -jar *.jar
