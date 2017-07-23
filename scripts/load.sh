#!/bin/bash
rm -rf /usr/share/tomcat7/webapps/spring-petclinic-1.5.1*
service tomcat7 start > /var/log/starttomcat7.out 2>&1

