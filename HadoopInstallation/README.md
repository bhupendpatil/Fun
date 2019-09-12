# Installation Guide for Hadoop & Spark On Windows 10
(This method may work for older versions of Windows too)
___
## Download :
* **Java 8 x64** : [Oracle](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) [HasselFree](https://adoptopenjdk.net/) [**GDrive**](https://drive.google.com/open?id=1fwl4qr5AuJZJUn_ccQxsr1Z-bIXcsIVG)
* **7-zip** : [**7-zip**](https://www.7-zip.org/)
* **Hadoop** : [hadoop](https://hadoop.apache.org/releases.html) [**hadoop-3.2.0.tar.gz**](https://www.apache.org/dist/hadoop/common/hadoop-3.2.0/hadoop-3.2.0.tar.gz)
* **Spark** : [spark](https://spark.apache.org/downloads.html) [**spark-2.4.4-bin-hadoop2.6.tgz**](https://www.apache.org/dist/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.6.tgz)
* **winutils** : [**cdarlint/winutils**](https://github.com/cdarlint/winutils/archive/master.zip)

## Files Required :
* **jdk-8u221-windows-x64.exe** (if you have java 8 skip this step)
* **hadoop-3.2.0.tar.gz** (which is the current latest stable version for hadoop)
* **spark-2.4.4-bin-hadoop2.6.tgz** (which is the current latest stable version for spark)
* **winutils-master.zip** (contain binary files for windows / patch file)
___
## Guide
* **Step 1** :
  * Double click _jdk-8u221-windows-x64.exe_
  * Change the destination folder to location `C:\Java` and install it
  * install 7-zip (skip if you already have 7-zip)
  * Goto `C:\` and create 2 folders named `Hadoop` and `Spark`
  * using 7-zip extract _hadoop-3.2.0.tar.gz_ you'll get folder named _hadoop-3.2.0.tar_ open it and again extract _hadoop-3.2.0.tar_ using 7-zip, after extracting you'll get _hadoop-3.2.0_ named folder copy that folder in `C:\Hadoop` ; ignore errors all is really well
  * using 7-zip extract _spark-2.4.4-bin-hadoop2.6.tgz_ you'll get folder named _spark-2.4.4-bin-hadoop2.6_ copy that folder in `C:\Spark`

  you've copied the main files now

   should look like this

   ![prog1](https://user-images.githubusercontent.com/9783913/63634634-ced4bd80-c676-11e9-9cfd-24c239f39eca.PNG)

* **Step 2** :

   In this step we're going to set Environment Variables

  * Goto `Control Panel > System and Security > System > Advanced System Settings > Environment Variables...`
  * let us add system variables first
    * `JAVA_HOME` -> `C:\Java\jdk1.8.0_221`
    * `HADOOP_HOME` -> `C:\Hadoop\hadoop-3.2.0`
    * `SPARK_HOME` -> `C:\Spark\spark-2.4.4-bin-hadoop2.6`

   should look like this

   ![variables1](https://user-images.githubusercontent.com/9783913/64818871-9ae01e80-d5ca-11e9-8cf9-18d421a1330e.PNG)
  * let us now add path
    * `%JAVA_HOME%\bin`
    * `%HADOOP_HOME%\bin`
    * `%HADOOP_HOME%\sbin`
    * `%SPARK_HOME%\bin`

   should look like this

   ![path1](https://user-images.githubusercontent.com/9783913/63622948-d9ab3600-c615-11e9-9de8-e883f3496a94.PNG)
  * let us now see if things are well
    * open cmd and enter these commands `java -version` , `hdfs -version` and `spark-shell --version`

   should look like this

   ![cmd1](https://user-images.githubusercontent.com/9783913/64819041-fa3e2e80-d5ca-11e9-8846-376247b07e28.PNG)

* **Step 3** :

  Configure Hadoop

  * Goto `C:\Hadoop\hadoop-3.2.0\etc\hadoop` right click _core-site.xml_ file, edit and paste the following code
  ```
  <?xml version="1.0" encoding="UTF-8"?>
  <?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
  <configuration>
   <property>
    <name>fs.defaultFS</name>
    <value>hdfs://localhost:9000</value>
   </property>
  </configuration>
  ```
  * Goto `C:\Hadoop\hadoop-3.2.0\etc\hadoop` right click _mapred-site.xml_ file, edit and paste the following code
  ```
  <?xml version="1.0" encoding="UTF-8"?>
  <?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
  <configuration>
   <property>
    <name>mapreduce.framework.name</name>
    <value>yarn</value>
   </property>
  </configuration>
  ```
  * Goto `C:\Hadoop\hadoop-3.2.0\etc\hadoop` right click _hdfs-site.xml_ file, edit and paste the following code
  ```
  <?xml version="1.0" encoding="UTF-8"?>
  <?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
  <configuration>
   <property>
    <name>dfs.replication</name>
    <value>1</value>
   </property>
   <property>
    <name>dfs.namenode.name.dir</name>
    <value>file:///C:/Hadoop/hadoop-3.2.0/namenode</value>
   </property>
   <property>
    <name>dfs.datanode.data.dir</name>
    <value>file:///C:/Hadoop/hadoop-3.2.0/datanode</value>
   </property>
  </configuration>
  ```
  * Goto `C:\Hadoop\hadoop-3.2.0\etc\hadoop` right click _yarn-site.xml_ file, edit and paste the following code
  ```
  <?xml version="1.0" encoding="UTF-8"?>
  <?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
  <configuration>
   <property>
    <name>yarn.nodemanager.aux-services</name>
    <value>mapreduce_shuffle</value>
   </property>
   <property>
    <name>yarn.nodemanager.auxservices.mapreduce.shuffle.class</name>
    <value>org.apache.hadoop.mapred.ShuffleHandler</value>
   </property>
  </configuration>
  ```
  * Goto `C:\Hadoop\hadoop-3.2.0` make two folders named `namenode` & `datanode`

   should look like this

   ![direc1](https://user-images.githubusercontent.com/9783913/63624672-d6667900-c61a-11e9-8589-66b1f2e4edf3.PNG)

* **Step 4** :

  Patching Hadoop

  * Extract _winutils-master.zip_ using 7-zip and open it
  * Find `hadoop-3.2.0` and open it
  * open `bin` folder
  * copy the all content inside bin folder
  * goto `C:\Hadoop\hadoop-3.2.0\bin`
  * paste all the content in it

   should look like this

   ![fold1](https://user-images.githubusercontent.com/9783913/64818653-1db4a980-d5ca-11e9-8ce3-a3c71cc2bd09.PNG)

  * open cmd and run this command `hdfs namenode -format`

   should look like this

   ![cmdd1](https://user-images.githubusercontent.com/9783913/63625375-0e6ebb80-c61d-11e9-9308-1d221c9fa04f.PNG)

  * Now copy `hadoop-yarn-server-timelineservice-3.2.0` from `C:\Hadoop\hadoop-3.2.0\share\hadoop\yarn\timelineservice` to `C:\Hadoop\hadoop-3.2.0\share\hadoop\yarn`

* **Step 5** :

  Booting HDFS (Final step)

  * Open cmd and start hdfs by `start-dfs.cmd` & `start-yarn.cmd`

   should look like this

   ![fin1](https://user-images.githubusercontent.com/9783913/63625684-f64b6c00-c61d-11e9-886c-cc0c93599f15.PNG)

  * Open browser and visit `localhost:8088` and `localhost:9870`

   should look like this

   ![fin2](https://user-images.githubusercontent.com/9783913/63625851-88ec0b00-c61e-11e9-8cdd-0576b85b7cfe.PNG)

You're done now!!!
