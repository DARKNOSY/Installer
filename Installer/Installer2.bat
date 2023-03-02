@echo off
mode 160,50
title Installer: Page 2/4 @DARKNOSY
:menu
type menu2.py
color b

set /p action=
if '%action%'=='1' goto SB
if '%action%'=='2' goto Steam
if '%action%'=='3' goto VB
if '%action%'=='4' goto VS
if '%action%'=='5' goto VSC
if '%action%'=='6' goto Opera
if '%action%'=='7' goto OGX
if '%action%'=='8' goto PP
if '%action%'=='9' goto NP
if '%action%'=='10' goto Quit 

:SB
@echo off & cls
start %cd%/Softwares/Sandboxie-Classic-x64-v5.57.7.exe
goto menu

:Steam
@echo off & cls
start %cd%/Softwares/SteamSetup.exe
goto menu

:VB
@echo off & cls
start %cd%/Softwares/VirtualBox-7.0.4-154605-Win.exe
goto menu

:VS
@echo off & cls
start %cd%/Softwares/VisualStudioSetup.exe
goto menu

:VSC
@echo off & cls
start %cd%/Softwares/VSCodeUserSetup-x64-1.74.3.exe
goto menu

:Opera
@echo off & cls
start %cd%/Softwares/OperaSetup.exe
goto menu

:OGX
@echo off & cls
start %cd%/Softwares/OperaGXSetup.exe
goto menu

:Quit
Exit

:PP
@echo off & cls
start Installer.bat
exit

:NP
@echo off & cls
start Installer3.bat
exit