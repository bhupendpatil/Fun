# Guide to run Hadoop Code on Windows 10
(This method may work for older versions of Windows too)
___
## Prerequisites :
* Hadoop already installed; if not follow this [Guide](https://github.com/bhupendpatil/Fun/blob/master/HadoopInstallation/README.md)
* NetBeans (any versions)
* If you don't want to use NetBeans you can use any IDE or .jar maker
* Knowledge about whatever you are trying to do
___
## Reason :
* **Hadoop** - cause you want to run hadoop code ?
* **Java IDE or any .jar maker** - cause they'll help you build you jar file you may also use cmd to make jar file
* **Why NetBeans??** - cause I'm going to use NetBeans to make .jar files in this tutorial
___
## Guide :
* Step 1:
  * Open NetBeans
  * `File > New Project > Java Application` then Next
  * Project Name : Give any of your choice I'm giving `charcount` then Finish
  * Get the files from [here](https://github.com/bhupendpatil/Practice/tree/master/Java/Hadoop/charcount) to follow along
  * make files in charcount folder

  you've made files now  
  should look like this

  ![p1](https://user-images.githubusercontent.com/9783913/69484136-9a2ef880-0e55-11ea-8ed1-e23ac7df33a9.PNG)

* Step 2:

  we are going to give dependencies to those Files
  * Right-click on `charcount` and Properties
  * Click on Libraries
  * Click on Add JAR/Folder
  * Go to `C:\Hadoop\hadoop-3.2.0\share\hadoop\common` select `hadoop-common-3.2.0.jar`
  * Click on Add JAR/Folder
  * Go to `C:\Hadoop\hadoop-3.2.0\share\hadoop\mapreduce` select 3 files `hadoop-mapreduce-client-common-3.2.0.jar`, `hadoop-mapreduce-client-core-3.2.0.jar`, `hadoop-mapreduce-client-jobclient-3.2.0.jar`

  should look like this

  ![p2](https://user-images.githubusercontent.com/9783913/69484260-2988db80-0e57-11ea-91a9-301e10f9c3c5.PNG)

* Step 3:

  we are going to build .jar file
  * Click on `Run > Clean and Build Project`
  * It will make your .jar file
  * Location of your file will be `Documents\NetBeansProjects\charcount\dist\charcount.jar`
  * my location is `C:\Users\Bhupend\Documents\NetBeansProjects\charcount\dist\charcount.jar`
  * yours location may differ

* Step 4:

  getting started with Hadoop now
  * Open cmd as Administrator
  * Type this command to start Hadoop `start-all.cmd`
  * Do not close those other cmd's

  this will turn on Hadoop

* Step 5:

  in this step we will make input file in hadoop
  * Type `hadoop fs -mkdir /Charcount` will make a folder named `Charcount`
  * Type `hadoop fs -mkdir /Charcount/input` will make a folder named `input` in `Charcount`
  * Type `hadoop fs -put "C:\Users\Bhupend\Desktop\input.txt" /Charcount/input`
  make sure you make `input.txt` file on desktop and this command may differ for you; change username in that command to yours

  should look like this

  ![p4](https://user-images.githubusercontent.com/9783913/69484711-74f1b880-0e5c-11ea-9447-cbe11abc3a1a.PNG)

* Step 6:

  in this step we will run our code ie our .jar files
  * Type `hadoop jar your-jar-file.jar /Charcount/input/input.txt /Charcount/output`
  * your-jar-file.jar is your jar files location
  * /Charcount/output is the location where hadoop will create an output
  * my command is like `jar "C:\Users\Bhupend\Documents\NetBeansProjects\charcount\dist\charcount.jar" /Charcount/input/input.txt /Charcount/output` yours may differ

  should look like this

  ![p5](https://user-images.githubusercontent.com/9783913/69484805-91422500-0e5d-11ea-810d-fb904df9121b.PNG)
  ![p6](https://user-images.githubusercontent.com/9783913/69484825-bcc50f80-0e5d-11ea-8c15-b26218732343.PNG)

* Step 6:
  
  lets check our output folder now
  * Type `hadoop fs -ls /Charcount/output/`
  * you will get a look about what content is present in the /Charcount/output folder
  * Type `hadoop fs -cat /Charcount/output/part-r-00000` (the file name may differ)
  * thats your output

  should look like this
  ![Capture](https://user-images.githubusercontent.com/9783913/72004136-cb7e4f00-3270-11ea-8177-39c30c856249.PNG)

* Step 7:(Optional Step/GUI version)

  lets check our output now
  * visit `http://localhost:9870/`
  * click on `utilities > Browse the file system `
  * click on `GO`
  * click on `Charcount > output > part-r-0000`
  * click on  `Head the file (first 32K)`
  * thats your output

  should look like this
  ![Capture](https://user-images.githubusercontent.com/9783913/69484951-0c580b00-0e5f-11ea-9d6a-237e9822341b.PNG)

You're done now!!!
