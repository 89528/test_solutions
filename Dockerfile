FROM tomcat:latest

ADD ./index.html /usr/local/tomcat/webapps/test/index.html

EXPOSE 8060

CMD ["catalina.sh","run"]
