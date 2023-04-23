@echo off
mode 160,50
title Installer: Page 2/6 @DARKNOSY
:menu
cls
type menu2.txt
color b

set /p action=
if '%action%'=='1' goto SB
if '%action%'=='2' goto Steam
if '%action%'=='3' goto VB
if '%action%'=='4' goto VS
if '%action%'=='5' goto VSC
if '%action%'=='6' goto Opera
if '%action%'=='7' goto Credits
if '%action%'=='8' goto PP
if '%action%'=='9' goto NP
if '%action%'=='10' goto Quit 

:SB
start %cd%\Softwares\Sandboxie-Classic-x64-v5.57.7.exe
goto menu

:Steam
start %cd%\Softwares\SteamSetup.exe
goto menu

:VB
start %cd%\Softwares\VirtualBox-7.0.4-154605-Win.exe
goto menu

:VS
start %cd%\Softwares\VisualStudioSetup.exe
goto menu

:VSC
start %cd%\Softwares\VSCodeUserSetup-x64-1.74.3.exe
goto menu

:Opera
start %cd%\Softwares\OperaSetup.exe
goto menu

:Quit
SET msgboxTitle=Installer @DARKNOSY
SET msgboxBody=Thank you for using Installer!
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Exit 

:PP
start Installer.bat
exit

:NP
start Installer3.bat
exit

:Credits
explorer "https://github.com/DARKNOSY"
goto menu