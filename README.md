# spark-ignite-integration

### set the env
    export SPARK_HOME=$PROJECT_HOME/spark-2.3.4-bin-hadoop2.7
    export IGNITE_HOME=$PROJECT_HOME/apache-ignite-2.7.6-bin

    export ZOOKEEPER_HOME=$PROJECT_HOME/apache-zookeeper-3.6.0-bin
    export SCALA_HOME=$PROJECT_HOME/scala-2.11.8
    export PATH=$SCALA_HOME/bin:$PATH:$SPARK_HOME:$SPARK_HOME/bin:$IGNITE_HOME:$IGNITE_HOME/bin



### run zookeeper
    $ZOOKEEPER_HOME/bin/zkServer.sh start

### Ignite config file
    Set up an Ignite config file using zookeeper discovery
    Add the following to Cache Configuration in $IGNITE_HOME/config/ignite-zookeeper-config.xml

      <property name="discoverySpi">
        <bean class="org.apache.ignite.spi.discovery.zk.ZookeeperDiscoverySpi">
                <property name="zkConnectionString" value="Zookeeper Server IP address:2181"/>
                <property name="sessionTimeout" value="30000"/>
                <property name="zkRootPath" value="/zkPath"/>
                <property name="joinTimeout" value="10000"/>
        </bean>
      </property>

### run the ignite node
    $IGNITE_HOME/bin/ignite.sh $IGNITE_HOME/config/ignite-zookeeper-config.xml


### run the spark-master node
    $SPARK_HOME/bin/spark-class org.apache.spark.deploy.master.Master

### run the spark-worker
    $SPARK_HOME/bin/spark-class org.apache.spark.deploy.worker.Worker spark://SPARK_MASTER_NODE_IP:7077

### run pyspark
#### requires setting up IGNITE Libs in classpath
#### refer run_pyspark.sh
    $SPARK_HOME/bin/pyspark --jars $IGNITE_JARS --master spark://SPARK_MASTER_NODE_IP:7077

#### Test out pyspark
    input = spark.read.format('csv').option('header', 'true').option('delimiter', ',').load('sp500List.csv')

    import os
    configFile = os.environ['IGNITE_HOME'] + '/config/ignite-zookeeper-config.xml'

    input.write.format('ignite').option('table', 'sp500_list').option('primaryKeyFields', 'ticker').option('config', configFile).save()

    ignite = spark.read.format('ignite').option('config', configFile).option('table', 'sp500_list').load()
    ignite.count()
    ignite.take(5)

