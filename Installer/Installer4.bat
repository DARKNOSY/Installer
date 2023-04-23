@echo off
mode 160,50
title Installer: Page 4/6 @DARKNOSY
:menu
cls
type menu4.txt
color d

set /p action=
if '%action%'=='1' goto AD
if '%action%'=='2' goto Py
if '%action%'=='3' goto RYD
if '%action%'=='4' goto AB
if '%action%'=='5' goto DTL
if '%action%'=='6' goto CE
if '%action%'=='7' goto Credits
if '%action%'=='8' goto PP
if '%action%'=='9' goto NP
if '%action%'=='10' goto Quit

:AD
start %cd%\Softwares\AnyDesk.exe
goto menu

:Py
cls
echo Downloading Python 3.9.5...
for /f "tokens=1,2 delims= " %%a in ('powershell -Command "Invoke-WebRequest https://www.python.org/ftp/python/ -UseBasicParsing | Select-String -Pattern '3.9.5' -AllMatches | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value | Sort-Object -Descending -Unique | Select-Object -First 1"') do (
    set "PYTHON_VERSION=%%a%%b"
)
set "PYTHON_URL=https://www.python.org/ftp/python/%PYTHON_VERSION%/python-%PYTHON_VERSION%-amd64.exe"
set "PYTHON_EXE=python-installer.exe"
curl -L -o %PYTHON_EXE% %PYTHON_URL%
start /wait %PYTHON_EXE% /quiet /passive InstallAllUsers=0 PrependPath=1 Include_test=0 Include_pip=1 Include_doc=0
del %PYTHON_EXE%
goto menu

:RYD
explorer "https://returnyoutubedislike.com/install"
goto menu

:AB
explorer "https://chrome.google.com/webstore/detail/adblock-%E2%80%94-best-ad-blocker/gighmmpiobklfepjocnamgkkbiglidom?hl=en"
goto menu

:DTL
explorer "https://chrome.google.com/webstore/detail/discord-token-login/ealjoeebhfijfimofmecjcjcigmadcai?hl=en"
goto menu

:CE
explorer "https://chrome.google.com/webstore/detail/cookie-editor/hlkenndednhfkekhgcdicdfddnkalmdm?hl=en"
goto menu

:Credits
explorer "https://github.com/DARKNOSY"
goto menu

:PP
start Installer3.bat
exit

:FDM
start %cd%\Softwares\fdm_x64_setup.exe
goto menu

:NP
start Installer5.bat
exit

:Quit
SET msgboxTitle=Installer @DARKNOSY
SET msgboxBody=Thank you for using Installer!
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Exit 