FROM adoptopenjdk/openjdk15:alpine-jre
VOLUME /tmp
EXPOSE 8200
ADD target/*.jar pensionerdetail-microservice.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /pensionerdetail-microservice.jar" ]


#FROM adoptopenjdk/openjdk15:alpine-jre
#EXPOSE 8200
#ADD target/pensionerdetail-microservice.jar pensionerdetail-microservice.jar
#ENTRYPOINT ["java","-jar","/pensionerdetail-microservice.jar"]
