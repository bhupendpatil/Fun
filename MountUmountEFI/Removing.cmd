rem it will remove EFI partition as Y
rem remember to edit .txt file if disk is not 0
rem remember to edit .txt file if EFI partition is not 1 
rem you can change to the one which is assigned to EFI partition.

@echo off
echo will run assigning.txt now
set pwd=%cd%\removing.txt
pause

diskpart /s %pwd%