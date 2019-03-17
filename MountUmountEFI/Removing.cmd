rem it will remove EFI partition as Y
rem remember to edit this file if disk is not 0
rem remember to edit this file if EFI partition is not 1 
rem you can change letter to anything you want too..

@echo off
echo will run assigning.txt now
set pwd=%cd%\removing.txt
pause

diskpart /s %pwd%