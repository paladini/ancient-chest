@echo off
title Website Favorite Extensions Maker by Paladini
goto:main

:main
cls
echo.
echo Please, select one option (number and press enter):
echo.
echo 1 - Make "Favorite Extension"
echo 2 - How to Make
echo 3 - About
echo 4 - Exit
echo.
set /p menu=
if %menu%==1 goto:make
if %menu%==2 goto:how
if %menu%==3 goto:about
if %menu%==4 goto:exit
goto:eof

:make
cls
echo.
echo Please, insert the name of extension:
echo.
set /p name=
cls
echo.
echo Please, enter your description:
echo.
set /p descri=
cls
echo.
echo Please, insert the name of icon (name.extension)(ex: 128.png):
echo.
set /p icone=
cls
echo.
echo Please, insert your website link (ex: www.techsempre.blogspot.com):
echo.
set /p site=
cls
echo { >>manifest.json
echo "name": "%name%", >>manifest.json
echo "description": "%descri%", >>manifest.json
echo "version": "1.0", >>manifest.json
echo "icons": { >>manifest.json
echo "128": "%icone%" >>manifest.json
echo }, >>manifest.json
echo "app": { >>manifest.json
echo "urls": [ >>manifest.json
echo "http://%site%" >>manifest.json
echo ], >>manifest.json
echo "launch": { >>manifest.json
echo "web_url": "http://%site%" >>manifest.json
echo } >>manifest.json
echo }, >>manifest.json
echo "permissions": [ >>manifest.json
echo "unlimitedStorage", >>manifest.json
echo "notifications" >>manifest.json
echo ] >>manifest.json
echo } >>manifest.json
echo. >>Don't_Forget.txt
echo. >>Don't_Forget.txt
echo =======  About Creator ======= >>Don't_Forget.txt
echo Program are developed by Fernando Paladini. >>Don't_Forget.txt
echo pCreations are the company of Fernando Paladini and Paulo Fernando A. Fontes >>Don't_Forget.txt
echo. >>Don't_Forget.txt
echo To send an question, suggestion or if you need help or anything, please send an e-mail for: >>Don't_Forget.txt
echo fernandopalad@gmail.com >>Don't_Forget.txt
echo Or >>Don't_Forget.txt
echo nando.futebol@hotmail.com >>Don't_Forget.txt
echo. >>Don't_Forget.txt
echo ========================== >>Don't_Forget.txt
echo. >>Don't_Forget.txt
echo Created on March of 2011 by Fernando Paladini (pCreations). >>Don't_Forget.txt
md C:\paladini
move manifest.json C:\paladini
move %icone% C:\paladini
move Don't_Forget.txt C:\Paladini
CD..
CD..
CD..
CD..
C:
CD Users
CD %username%
CD Appdata
CD Local
CD Google
CD Chrome
CD Application
chrome.exe --pack-extension=C:\paladini
CD..
CD..
CD..
CD..
CD..
CD..
CD..
CD..
CD..
move paladini.crx C:\paladini
cls
move paladini.pem C:\paladini
cls
MD C:\paladini\original_files
cls
move %icone% original_files
cls
move manifest.json original_files
cls
move Don't_Forget.txt original_files
cls
goto:certo
goto:eof

:certo
cls
echo.
echo The task end's with successful
echo.
echo Now, I have generate one folder with all resources you need. 
echo.
echo The folder is called "paladini" - zip her and upload or upload some ".crx" file (Google Chrome Install File).
echo.
pause >nul
goto:main
goto:eof

:how
cls
echo.
echo.
echo How to Create your Favorite Extension for Chrome?
echo.
echo What you need:
echo.
echo 1 - One png image (128 x 128 px)
echo 2 - Website Link
echo 3 - Website Title
echo 4 - Website Description
echo.
echo =====================================================
echo.
echo # Press Any key to continue
echo.
echo======================================================
pause
goto:main
goto:eof

:how2
cls
echo.
echo.
echo  To configure:
echo.
echo 1 - Enter the Website Name.
echo 2 - Enter the Website description
echo 3 - Enter the icon "adress" (The image need locate in same folder of this program). Enter the name of image following ".png" - "example.png" for example) - Without "".
echo 4 - Enter the Website Link
echo.
echo.
echo IF you have any other question, please send and e-mail to fernandopalad@gmail.com
echo.
echo.
echo # Press any key to go to Main Menu.
pause >nul
goto:main
goto:eof

:about
cls
echo.
echo.
echo ============ Website Favorite Extensions Maker ==============
echo.
echo # Developed by Fernando Paladini - pCreations Company
echo # Developed on 04/2011
echo # This software is free and your function is to help any people.
echo.
echo ======================================================
echo.
echo If you have some error, question, suggestion, or other, please send an e-mail to:
echo fernandopalad@gmail.com
echo.
echo Visite my Website: www.techsempre.blogspot.com
echo.
echo ======================================================
pause >nul
goto:main
goto:eof

:exit
cls
echo.
echo ============ Created by Fernando Paladini (pCreations) ==============
echo.
echo                                      Thanks for Download and Use
echo.
echo.
echo # Any question, contact-me: fernandopalad@gmail.com
echo # Press any key to exit...
pause >nul
exit
goto:eof