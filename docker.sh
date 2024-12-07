#!/bin/bash
projectVersion=$(mvn -f pom.xml help:evaluate -Dexpression=project.version -q -DforceStdout)
echo -e "$projectVersion\n"


docker build -t alexsouzasilva/mels:$projectVersion --file=docker/Dockerfile .

if [[ $? == 0 ]]; then
    echo "$DOCKERHUB_TOKEN" | docker login -u alexsouzasilva --password-stdin
    docker push alexsouzasilva/mels:$projectVersion
fi