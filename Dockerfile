FROM tomcat:9.0

VOLUME /tmp

ADD **/*.war /usr/local/tomcat/webapps/app.war

RUN sh -c 'touch /usr/local/tomcat/webapps/app.war'

EXPOSE 8080


ENTRYPOINT ["sh","-c","java -jar /usr/local/tomcat/webapps/app.war"]
