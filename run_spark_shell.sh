export IGNITE_JARS=$IGNITE_HOME/libs/annotations-13.0.jar
export IGNITE_JARS=$IGNITE_HOME/libs/cache-api-1.0.0.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-core-2.7.6.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-shmem-1.0.0.jar,$IGNITE_JARS

export IGNITE_JARS=$IGNITE_HOME/libs/ignite-indexing/commons-codec-1.11.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-indexing/h2-1.4.197.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-indexing/ignite-indexing-2.7.6.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-indexing/lucene-analyzers-common-7.4.0.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-indexing/lucene-core-7.4.0.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-indexing/lucene-queryparser-7.4.0.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-log4j/ignite-log4j-2.7.6.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-log4j/log4j-1.2.17.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-log4j2/ignite-log4j2-2.7.6.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-log4j2/log4j-api-2.11.0.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-log4j2/log4j-core-2.11.0.jar,$IGNITE_JARS

export IGNITE_JARS=$IGNITE_HOME/libs/ignite-slf4j/ignite-slf4j-2.7.6.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-slf4j/slf4j-api-1.7.7.jar,$IGNITE_JARS

export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spark/hadoop-common-2.6.5.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spark/ignite-spark-2.7.6.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spark/json4s-core_2.11-3.5.0.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spark/scala-library-2.11.12.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spark/scala-reflect-2.11.12.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spark/spark-catalyst_2.11-2.3.0.jar,$IGNITE_JARS

export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spark/spark-core_2.11-2.3.0.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spark/spark-network-common_2.11-2.3.0.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spark/spark-network-shuffle_2.11-2.3.0.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spark/spark-sql_2.11-2.3.0.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spark/spark-tags_2.11-2.3.0.jar,$IGNITE_JARS

export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spring/commons-logging-1.1.1.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spring/ignite-spring-2.7.6.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spring/spring-aop-4.3.18.RELEASE.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spring/spring-beans-4.3.18.RELEASE.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spring/spring-context-4.3.18.RELEASE.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spring/spring-core-4.3.18.RELEASE.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spring/spring-expression-4.3.18.RELEASE.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spring/spring-jdbc-4.3.18.RELEASE.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spring/spring-tx-4.3.18.RELEASE.jar,$IGNITE_JARS



export IGNITE_JARS=$IGNITE_HOME/libs/ignite-aop/aopalliance-1.0.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-aop/aspectjrt-1.8.13.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-aop/aspectjweaver-1.8.13.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-aop/ignite-aop-2.7.6.jar,$IGNITE_JARS


export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spring-data/ignite-spring-data-2.7.6.jar,$IGNITE_JARS
export IGNITE_JARS=$IGNITE_HOME/libs/ignite-spring-data/spring-data-commons-1.13.14.RELEASE.jar,$IGNITE_JARS

echo $IGNITE_JARS
$SPARK_HOME/bin/spark-shell --jars $IGNITE_JARS --master spark://192.168.86.25:7077

