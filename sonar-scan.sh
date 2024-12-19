#!/bin/bash

projectVersion=$(mvn -f pom.xml help:evaluate -Dexpression=project.version -q -DforceStdout)
projectName=$(mvn -f pom.xml help:evaluate -Dexpression=project.artifactId -q -DforceStdout)
projetcKey=$(mvn -f pom.xml help:evaluate -Dexpression=project.groupId -q -DforceStdout)
sonarUrl="http://localhost:9000"
token="squ_a57f2304d5afb4ead9c6fced9d8859a68505c58d"


mvn sonar:sonar -Dsonar.projectName=$projectName \
    -Dsonar.projectKey=$projetcKey \
    -Dsonar.projectVersion=$projectVersion \
    -Dsonar.host.url=$sonarUrl \
    -Dsonar.login=$token
    