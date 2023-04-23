@echo off
mode 160,50
title Installer: Page 1/6 @DARKNOSY
:menu
cls
type menu.txt
color a

set /p action=
if '%action%'=='1' goto 7z
if '%action%'=='2' goto AD
if '%action%'=='3' goto Chrome
if '%action%'=='4' goto Discord
if '%action%'=='5' goto GF
if '%action%'=='6' goto Git
if '%action%'=='7' goto MB
if '%action%'=='8' goto Credits
if '%action%'=='9' goto NP
if '%action%'=='10' goto Quit

:7z
start %cd%\Softwares\7z2201-x64.exe
goto menu

:AD
explorer "https://anydesk.com/fr/downloads/windows?dv=win_exe"
goto menu

:Chrome
start %cd%\Softwares\ChromeSetup.exe
goto menu

:Discord
start %cd%\Softwares\DiscordSetup.exe
goto menu

:GF
start %cd%\Softwares\GeForce_Experience_v3.26.0.160.exe
goto menu

:Git
start %cd%\Softwares\Git-2.39.0.2-64-bit.exe
goto menu

:MB
start %cd%\Softwares\MBSetup.exe
goto menu

:Quit
SET msgboxTitle=Installer @DARKNOSY
SET msgboxBody=Thank you for using Installer!
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Exit 

:NP
start Installer2.bat
exit

:Credits
explorer "https://github.com/DARKNOSY"
goto menu