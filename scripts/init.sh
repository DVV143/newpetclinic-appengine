#!/bin/bash -x

yum remove java-1.7.0 -y
yum search java | grep openjdk
yum install java-1.8.0-openjdk-headless.x86_64 -y
yum install -y java-1.8.0-openjdk-devel.x86_64 -y
update-alternatives --set java /usr/lib/jvm/jre-1.8.0-openjdk.x86_64/bin/java
update-alternatives --set javac /usr/lib/jvm/java-1.8.0-openjdk.x86_64/bin/javac
cd /tmp/
wget http://redrockdigimark.com/apachemirror/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
tar -xzvf apache-maven-3.5.0-bin.tar.gz
cd apache-maven-3.5.0/bin
./mvn --version

