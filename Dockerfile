FROM eclipse-temurin:17-jdk-alpine

WORKDIR $APP_HOME

RUN ls 

ENV APP_HOME /usr/src/app

COPY app/*.jar $APP_HOME/app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
