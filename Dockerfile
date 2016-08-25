FROM sumitsaiwal/easyleave

RUN rm -rf /opt/apache-tomcat-7.0.69/webapps/*

COPY /target/easyleave.war /opt/apache-tomcat-7.0.69/webapps/ROOT.war

EXPOSE 8080
ENTRYPOINT /entrypoint.sh

