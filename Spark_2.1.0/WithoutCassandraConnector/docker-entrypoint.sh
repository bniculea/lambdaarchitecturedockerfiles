#!/bin/bash
#set proxy to be used by spark when adding new packages
echo "spark.driver.extraJavaOptions -Dhttp.proxyHost=87.254.212.120 -Dhttp.proxyPort=8080 -Dhttps.proxyHost=87.254.212.120 -Dhttps.proxyPort=8080" >>$SPARK_HOME/conf/spark-defaults.conf
#add spark package for connecting to cassandra (it assumes Spark has already been installed and $SPARK_HOME already set
#echo "spark.jars.packages datastax:spark-cassandra-connector:1.6.0-s_2.10" >> $SPARK_HOME/conf/spark-defaults.conf
#add ip of the cassandra cluster no need if they are linked
#echo "spark.cassandra.connection.host 172.17.0.3" >> $SPARK_HOME/conf/spark-defaults.conf
exec "$@"
