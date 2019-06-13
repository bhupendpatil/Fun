# Installation Guide for Sql Server 2000 On Windows 10
(This method may work for older versions of Windows too)
___
## Download :
* **SQLServer2000.zip** : [GDrive](https://drive.google.com/open?id=1QRrSlz14Irk0OXpz9EXkN2l10am6q7AL) [Dropbox](https://www.dropbox.com/s/e7c7tb5l6otescg/SQLServer2000.zip?dl=0)

## Files Required :
* **Essential.zip** (Which contains Microsoft SQL Server folder)
* **SQLEVAL.exe** (Which contains SQL Server 2000 setup)
___
## Guide
* **Step 1** :
  * Extract the downloaded _**SQLServer2000.zip**_ file to any desired location. You will get [files](https://github.com/bhupendpatil/Fun/new/master#files-required-) which are required.
  * Double click on _**SQLEVAL.exe**_ and let installer extract it to its default location which is `C:\SQLEVAL` (you can give your own desired location too)
  * Extract _**Essential.zip**_ you will get `Microsoft SQL Server` folder
  * Should look like this
  ![Step1](https://user-images.githubusercontent.com/9783913/59412376-ec65eb00-8dda-11e9-9715-1ec934ec6451.PNG)

* **Step 2** :
  * Copy `Microsoft SQL Server` folder to location `C:\Program Files (x86)`
  * After copying `Microsoft SQL Server` folder right click and click on `Properties>Security>`
  * You now have to change permissions so click on `Edit`
  * Click on individual Group or user names
  * Change permission to Full Control(you have to do it for every instances in Group or user names)
  ![Step2](https://user-images.githubusercontent.com/9783913/59413394-10c2c700-8ddd-11e9-9091-57924bb69a65.PNG)
  
* **Step 3** :
  * Go to `C:\SQLEVAL` folder
  * Then go to `x86>setup` folder
  * Right click on `setupsql.exe` file and click Properties
  * Click on Compatibility Tab and change compatibility mode to `Windows XP (Service Pack 2)`
  ![Step3](https://user-images.githubusercontent.com/9783913/59414487-3e107480-8ddf-11e9-9e7b-edd260d41a09.PNG)

* **Step 4** :
  * We're going to install SQL Server 2000 now
  * Install the software by double clicking on **`setupsql.exe`**
  * Click Next 
  * Click Next(Make sure Local Computer is Selected)
  * Create new instance of SQL Server, or install Client Tools should be selected and then click Next
  * Give name and Click Next
  * Click Yes
  * Server and Client Tools must be selected and then Click Next
  * Default should be marked and click Next
  * Select Typical and click Next
  * Use the same account should be selected and Use the local system account must be selected then click next
  * Select Mixed Mode and enter password then click Next
  * Click Finish
  * Software has been installed now
  
* **Step 5** :
  * Go to `C:\SQLEVAL` folder
  * Then go to `msolap>install` folder
  * Right click on `Setup.exe` file and click Properties
  * Click on Compatibility Tab and change compatibility mode to `Windows XP (Service Pack 2)`
  ![step5](https://user-images.githubusercontent.com/9783913/59416549-2fc45780-8de3-11e9-8728-0105eb5308d3.PNG)

* **Step 6** :
  * We're going to install Analysis Services
  * Install the software by double clicking on **`Setup.exe`**
  * Click Next
  * Click Yes
  * Click Next
  * Click Next
  * Click Next
  * Click Finish
  * Software has been installed now