rem it will set EFI partition as Y
rem remember to edit .txt file if disk is not 0
rem remember to edit .txt file if EFI partition is not 1 
rem you can change letter to anything you want too..

@echo off
echo will run assigning.txt now
set pwd=%cd%\assigning.txt
pause

diskpart /s %pwd%