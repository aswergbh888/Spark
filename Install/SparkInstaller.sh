#!/bin/bash

# Java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y oracle-java8-set-default

cd ~

# Scala
wget http://downloads.lightbend.com/scala/2.12.1/scala-2.12.1.tgz
tar -xzvf scala-2.12.1.tgz

# Spark + Hadoop
wget http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz
tar -xzvf spark-2.1.0-bin-hadoop2.7.tgz

# Environment variable
echo "export SPARK_HOME=~/spark-2.1.0-bin-hadoop2.7" >> ~/.bashrc
echo "export SCALA_HOME=~/scala-2.12.1" >> ~/.bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> ~/.bashrc
echo "export PATH=$SCALA_HOME/bin:$SPARK_HOME/bin:$JAVA_HOME/bin:$PATH" >> ~/.bashrc
source ~/.bashrc
