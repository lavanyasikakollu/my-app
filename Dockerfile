FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/
RUN touch /usr/local/tomcat/one.txt
#RUN ls /usr/local/tomcat/webapps/
#RUN touch /usr/local/tomcat/one.txt
#RUN rm /usr/local/tomcat/one.txt
