@echo off
mode 160,50
title Installer: Page 3/4 @DARKNOSY
:menu
type menu3.py
color c

set /p action=
if '%action%'=='1' goto MB
if '%action%'=='2' goto EG
if '%action%'=='3' goto WRAR
if '%action%'=='4' goto EA
if '%action%'=='5' goto TV
if '%action%'=='6' goto Valorant
if '%action%'=='7' goto Roblox
if '%action%'=='8' goto PP
if '%action%'=='9' goto NP
if '%action%'=='10' goto Quit

:MB
@echo off & cls
start %cd%\Softwares\microsoft-bing-desktop-1-3-167-0-en-fr-de-jp-win.exe
goto menu

:EG
@echo off & cls
start %cd%\Softwares\EpicInstaller-14.6.2.msi
goto menu

:WRAR
@echo off & cls
start %cd%\Softwares\winrar-x64-621.exe
goto menu

:EA
@echo off & cls
start %cd%\Softwares\EAappInstaller.exe
goto menu

:TV
@echo off & cls
start %cd%\Softwares\TeamViewer_Setup_x64.exe
goto menu

:Valorant
@echo off & cls
start %cd%\Softwares\Install VALORANT.exe
goto menu

:Roblox
@echo off & cls
explorer "https://www.roblox.com/games/5373028495/LGBTQ-Hangout"
explorer "https://en.help.roblox.com/hc/en-us/articles/204473560-How-to-Install-and-Play-Roblox-Using-Browser"
goto menu

:Quit
exit

:NP
@echo off & cls
start Installer4.bat
exit

:PP
@echo off & cls
start Installer2.bat
exit