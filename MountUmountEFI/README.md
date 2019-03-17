# Mounting & Unmounting EFI Partition on Windows

## Automatic Method
### [Download](https://raw.githubusercontent.com/bhupendpatil/Fun/raw/RAW/MountUmountEFI.zip)

## Manual Method
### Accessing
* Open CMD with Admin rights
* ``` diskpart ```
* ``` list disk ```
* ``` select disk 0 ``` target disk
* ``` list partition ```
* ``` select partition 1 ``` number depends on you EFI partition
* ``` assign letter=y ``` you can use any letter
* ``` exit ```

### Removing
* Open CMD with Admin rights
* ``` diskpart ```
* ``` list disk ```
* ``` select disk 0 ``` target disk
* ``` list partition ```
* ``` select partition 1 ``` number depends on you EFI partition
* ``` remove letter=y ``` only if you have assigned letter as y
* ``` exit ```