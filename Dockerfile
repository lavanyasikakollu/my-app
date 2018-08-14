FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/
RUN rm /usr/local/tomcat/conf/tomcat-users.xml
COPY /root/tomcat-users.xml /usr/local/tomcat/conf/
RUN rm /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY /root/context.xml /usr/local/tomcat/webapps/manager/META-INF/
