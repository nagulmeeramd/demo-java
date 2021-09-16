#FROM tomcat:8.5
FROM tomcat:8.0-alpine
# Debugging tools: A few ways to handle debugging tools.
# Trade off is a slightly more complex volume mount vs keeping the image size down.
COPY target/demo.war /usr/local/tomcat/webapps/demo.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
