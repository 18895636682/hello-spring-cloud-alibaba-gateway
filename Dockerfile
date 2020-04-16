FROM fancybing/java:serverjre-8
ADD /target/app.jar app.jar
ENTRYPOINT ["java", "-Xmx200m","-jar","/app.jar"]
EXPOSE 8011
