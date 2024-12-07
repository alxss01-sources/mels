#!/bin/bash

projectVersion=$(mvn -f pom.xml help:evaluate -Dexpression=project.version -q -DforceStdout)
projectName=$(mvn -f pom.xml help:evaluate -Dexpression=project.artifactId -q -DforceStdout)
projetcKey=$(mvn -f pom.xml help:evaluate -Dexpression=project.groupId -q -DforceStdout)
sonarUrl="http://localhost:9000"
token="squ_48f1f52efe8a93bce5b482325f3949bfe870333a"


mvn sonar:sonar -Dsonar.projectName=$projectName \
    -Dsonar.projectKey=$projetcKey \
    -Dsonar.projectVersion=$projectVersion \
    -Dsonar.host.url=$sonarUrl \
    -Dsonar.login=$token
    