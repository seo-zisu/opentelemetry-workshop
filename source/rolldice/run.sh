#!/bin/bash

set -euo pipefail

if [[ ! -f ./target/rolldice-0.0.1-SNAPSHOT.jar ]] ; then
    ./mvnw clean package -DskipTests
fi

# Download the OpenTelemetry Java agent, if we haven't done it already.
version=v2.15.0
jar=opentelemetry-javaagent.jar
if [[ ! -f ./${jar} ]] ; then
    curl -sL https://github.com/grafana/grafana-opentelemetry-java/releases/download/${version}/grafana-opentelemetry-java.jar -o ${jar}
fi

# 1-4. 이곳에 OpenTelemetry Java 에이전트를 추가해주새요 


# 1-5. 하단의 코드를 수정해주세요 
java -jar ./target/rolldice-0.0.1-SNAPSHOT.jar  

