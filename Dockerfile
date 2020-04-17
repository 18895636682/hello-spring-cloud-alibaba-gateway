FROM fancybing/java:serverjre-8
ADD /target/app.jar app.jar
ENTRYPOINT ["java", "-Xmx200m","-jar","/app.jar","--spring.cloud.nacos.discovery.ip=192.168.2.152","-c"]
EXPOSE 8011