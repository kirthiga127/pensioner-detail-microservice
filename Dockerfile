FROM openjdk:15
EXPOSE 8200
ADD target/pensionerdetail-microservice.jar pensionerdetail-microservice.jar
ENTRYPOINT ["java","-jar","/pensionerdetail-microservice.jar"]