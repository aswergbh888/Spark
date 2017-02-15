#!/bin/bash

# Java
sudo apt-get install -y python-software-properties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

cd ~

# Scala
wget http://downloads.lightbend.com/scala/2.12.1/scala-2.12.1.tgz
tar -xzvf scala-2.12.1.tgz

# Spark + Hadoop
wget http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz
tar -xzvf spark-2.1.0-bin-hadoop2.7.tgz

# Environment variable
echo 'export SPARK_HOME=~/spark-2.1.0-bin-hadoop2.7' >> ~/.bashrc
echo 'export SCALA_HOME=~/scala-2.12.1' >> ~/.bashrc
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-oracle' >> ~/.bashrc
echo 'export PATH=$SCALA_HOME/bin:$SPARK_HOME/bin:$JAVA_HOME/bin:$PATH' >> ~/.bashrc
exec bash
