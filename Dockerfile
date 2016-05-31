FROM java:8

ADD build/libs/service-registry-*.jar serviceRegistryApp.jar

RUN bash -c 'touch /serviceRegistryApp.jar'

EXPOSE 8761

CMD ["java", "-jar", "/serviceRegistryApp.jar"]