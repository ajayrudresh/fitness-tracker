FROM tomcat:7

ADD  . /usr/app-root/src/

WORKDIR /usr/app-root/src/

RUN apt update -y && apt install maven -y 

EXPOSE 8080

RUN mvn clean package

RUN cp /usr/app-root/src/target/FitnessTracker.war /usr/local/tomcat/webapps/
