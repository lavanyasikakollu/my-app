FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/
RUN ls /usr/local/tomcat/webapps/
ADD /usr/local/tomact/one.txt
RUN rm /usr/local/tomact/one.txt
