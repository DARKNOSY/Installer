@echo off
mode 160,50
title Installer: Page 3/6 @DARKNOSY
:menu
cls
type menu3.txt
color c

set /p action=
if '%action%'=='1' goto MB
if '%action%'=='2' goto EG
if '%action%'=='3' goto WRAR
if '%action%'=='4' goto EA
if '%action%'=='5' goto TV
if '%action%'=='6' goto Valorant
if '%action%'=='7' goto Credits
if '%action%'=='8' goto PP
if '%action%'=='9' goto NP
if '%action%'=='10' goto Quit

:MB
start %cd%\Softwares\microsoft-bing-desktop-1-3-167-0-en-fr-de-jp-win.exe
goto menu

:EG
start %cd%\Softwares\EpicInstaller-14.6.2.msi
goto menu

:WRAR
start %cd%\Softwares\winrar-x64-621.exe
goto menu

:EA
start %cd%\Softwares\EAappInstaller.exe
goto menu

:TV
start %cd%\Softwares\TeamViewer_Setup_x64.exe
goto menu

:Valorant
start %cd%\Softwares\Install VALORANT.exe
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
start Installer4.bat
exit

:PP
start Installer2.bat
exit

:Credits
explorer "https://github.com/DARKNOSY"
goto menu