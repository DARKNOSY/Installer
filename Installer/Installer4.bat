@echo off
mode 160,50
title Installer: Page 4/4 @DARKNOSY
:menu
type menu4.py
color d

set /p action=
if '%action%'=='1' goto AD
if '%action%'=='2' goto Py
if '%action%'=='3' goto RYD
if '%action%'=='4' goto AB
if '%action%'=='5' goto DTL
if '%action%'=='6' goto CE
if '%action%'=='7' goto FF
if '%action%'=='8' goto Python
if '%action%'=='9' goto FDM
if '%action%'=='10' goto Credits
if '%action%'=='11' goto PP
if '%action%'=='12' goto Quit

:AD
@echo off & cls
start %cd%\Softwares\AnyDesk.exe
goto menu

:Py
@echo off & cls
start %cd%\Softwares\python-3.9.5-amd64.exe
goto menu

:RYD
@echo off & cls
explorer "https://returnyoutubedislike.com/install"
goto menu

:AB
@echo off & cls
explorer "https://chrome.google.com/webstore/detail/adblock-%E2%80%94-best-ad-blocker/gighmmpiobklfepjocnamgkkbiglidom?hl=en"
goto menu

:DTL
@echo off & cls
explorer "https://chrome.google.com/webstore/detail/discord-token-login/ealjoeebhfijfimofmecjcjcigmadcai?hl=en"
goto menu

:CE
@echo off & cls
explorer "https://chrome.google.com/webstore/detail/cookie-editor/hlkenndednhfkekhgcdicdfddnkalmdm?hl=en"
goto menu

:FF
@echo off & cls
start %cd%\Softwares\Firefox Installer.exe
goto menu

:Python
@echo off & cls
start %cd%\Softwares\python-3.11.1-amd64.exe
goto menu

:Credits
@echo off & cls
explorer "https://github.com/DARKNOSY"
goto menu

:PP
@echo off & cls
start Installer3.bat
exit

:FDM
@echo off & cls
start %cd%\Softwares\fdm_x64_setup.exe
goto menu

:Quit
Exit