#!/bin/bash

cp /host/tomcat/lib/activiti.lic /opt/activiti/tomcat/lib

export JAVA_HOME=/opt/activiti/java

/opt/activiti/start-activiti.sh > /opt/activiti/tomcat/logs/catalina.out 2>&1 &

less +F /opt/activiti/tomcat/logs/catalina.out
