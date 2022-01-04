FROM java:8-jre
WORKDIR usr/src
ENV MYSQL_DATABASE = pranjit
ENV MYSQL_USER = root_app
ENV MYSQL_PASSWORD = root123
ENV MYSQL_CI_URL = jdbc:mysql://localhost:3306/pranjit
ADD ./target/mysqldemo-0.0.1-SNAPSHOT.jar /usr/src/mysqldemo-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/src/mysqldemo-0.0.1-SNAPSHOT.jar"]