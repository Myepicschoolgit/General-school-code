@echo off
color 0a
cls
if exist Info_files (
cd Info_files
goto :1
) else md Info_files
cd Info_files
goto :1

:1
if exist %username%_%computername%.txt (
goto :2
) else echo %time% %date% > %username%_%computername%.txt
echo ******************************************************************* >> %username%_%computername%.txt
systeminfo >> %username%_%computername%.txt
exit

:2
echo file exists 
echo Would you like to open the file?
set /p Option=y/n?:-
if %Option%==y notepad %username%_%computername%.txt
if %option%==n exit