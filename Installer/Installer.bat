@echo off
mode 160,50
title Installer: Page 1/4 @DARKNOSY
:menu
type menu.py
color a

set /p action=
if '%action%'=='1' goto 7z
if '%action%'=='2' goto AD
if '%action%'=='3' goto Chrome
if '%action%'=='4' goto Discord
if '%action%'=='5' goto GF
if '%action%'=='6' goto Git
if '%action%'=='7' goto MB
if '%action%'=='8' goto Proton
if '%action%'=='9' goto NP
if '%action%'=='10' goto Quit

:7z
@echo off & cls
start %cd%/Softwares/7z2201-x64.exe
goto menu

:AD
@echo off & cls
explorer "https://anydesk.com/fr/downloads/windows?dv=win_exe"
goto menu

:Chrome
@echo off & cls
start %cd%/Softwares/ChromeSetup.exe
goto menu

:Discord
@echo off & cls
start %cd%/Softwares/DiscordSetup.exe
goto menu

:GF
@echo off & cls
start %cd%/Softwares/GeForce_Experience_v3.26.0.160.exe
goto menu

:Git
@echo off & cls
start %cd%/Softwares/Git-2.39.0.2-64-bit.exe
goto menu

:MB
@echo off & cls
start %cd%/Softwares/MBSetup.exe
goto menu

:Proton
@echo off & cls
start %cd%/Softwares/ProtonVPN_win_v2.3.2.exe
goto menu

:Quit
exit

:NP
@echo off & cls
start Installer2.bat
exit