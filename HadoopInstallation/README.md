# Installation Guide for Hadoop & Spark On Windows 10
(This method may work for older versions of Windows too)
___
## Download :
* **Java** : [Oracle](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) [HasselFree]()
* **7-zip** : [7-zip](https://www.7-zip.org/)
* **Hadoop** : [hadoop](https://hadoop.apache.org/releases.html)
* **Spark** : [spark](https://spark.apache.org/downloads.html)
* **winutils** : [cdarlint/winutils](https://github.com/cdarlint/winutils/archive/master.zip)

## Files Required :
* **jdk-8u221-windows-x64.exe** (if you have java 8 skip this step)
* **hadoop-3.1.2.tar.gz** (which is the current latest stable version for hadoop)
* **spark-2.4.3-bin-hadoop2.7.tgz** (which is the current latest stable version for spark)
* **winutils-master.zip** (contain binary files for windows)
___
## Guide
* **Step 1** :
  * Double click _jdk-8u221-windows-x64.exe_
  * Change the destination folder to location `C:\Java` and install it
  * install 7-zip (skip if you already have 7-zip)
  * Goto `C:\` and create 2 folders named `Hadoop` and `Spark`
  * using 7-zip extract _hadoop-3.1.2.tar.gz_ you'll get folder named _hadoop-3.1.2.tar_ open it and again extract _hadoop-3.1.2.tar_ using 7-zip, after extracting you'll get _hadoop-3.1.2_ named folder copy that folder in `C:\Hadoop`
  * using 7-zip extract _spark-2.4.3-bin-hadoop2.7.tgz_ you'll get folder named _spark-2.4.3-bin-hadoop2.7_ copy that folder in `C:\Spark`
  * you've copied the main files now

* **Step 2** :

   In this step we're going to set Environment Variables
   
  * Goto `Control Panel > System and Security > System > Advanced System Settings > Environment Variables...`
  * let us add system variables first
    * `JAVA_HOME` -> `C:\Java\jdk1.8.0_221`
    * `HADOOP_HOME` -> `C:\Hadoop\hadoop-3.1.2`
    * `SPARK_HOME` -> `C:\Spark\spark-2.4.3-bin-hadoop2.7`
    
   should look like this 
   
   ![variables1](https://user-images.githubusercontent.com/9783913/63622806-6d303700-c615-11e9-8c3a-e14e1efc7298.PNG)
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
   
   ![cmd1](https://user-images.githubusercontent.com/9783913/63623332-eed49480-c616-11e9-9d57-6e4eed87771a.PNG)
  
* **Step 3** :
  * 