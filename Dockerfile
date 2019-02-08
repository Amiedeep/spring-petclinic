FROM java

WORKDIR /app
COPY . /app/

RUN ./mvnw package

CMD java -jar target/*.jar
