@echo off
title "Change MC Lang By Fernando Paladini"

:main
cls
echo.
echo.
echo Language, enter the option (number and enter):
echo.
echo 1 - English
echo 2 - Portuguese
echo 3 - Exit / Sair
echo.
set /p langmain=
if %langmain%==1 goto:en_us
if %langmain%==2 goto:pt_br
if %langmain%==3 goto:exit
goto:eof

:exit
cls
echo.
echo.
echo ===== Software developed by Fernando Paladini ===
echo.
echo  # Created by Fernando Paladini on 05/03/2011
echo  # All Rights Reserved
echo  # Please don't edit - If you edit please contact me before
echo.
echo ===== Thanks for download and Use =====
echo.
ping -n 6 127.0.0.0 >nul
goto:eof

:pt_br
cls
echo.
echo.
echo O que deseja fazer agora? (Digite numero e aperte enter)
echo.
echo 1 - Instalar arquivo ".Lang" 
echo 2 - Desinstalar / Restaurar Arquivo ".Lang"
echo 3 - Sobre
echo 4 - Sair
echo.
echo.
set /p ptmain1=
if %ptmain1%==1 goto:mudarpt
if %ptmain1%==2 goto:restaurar
if %ptmain1%==3 goto:sobre
if %ptmain1%==4 goto:exit
goto:eof

:sobre 
cls
echo.
echo.
echo ===== Programa desenvolvido por Fernando Paladini ====
echo.
echo # Criado por Fernando Paladini em 05/03/2011
echo # Todos os direitos Reservados
echo # Por favor não editar - se editar fale comigo antes
echo.
echo ---------------------- Contato -------------------------
echo.
echo # fernandopalad@gmail.com
echo # nando.futebol@hotmail.com
echo.
echo ---------------------------------------------------------
echo.
pause >nul
goto:pt_br
goto:eof

:mudarpt
cls
echo.
echo.
dir
echo.
echo.
if exist *.lang goto:mudarpt1 else (echo Nao existe nenhum arquivo .lang)
goto:eof

:mudarpt1
cls
set path="C:\Program Files\WinRAR\";%path%
MD lang
ren *.lang en_US.lang
copy en_US.lang lang
move lang %appdata%\.minecraft\bin
CD %appdata%
CD .minecraft
CD bin
MD Backup
copy minecraft.jar Backup\minecraft_backup.jar
copy minecraft.jar minecraft.rar
WinRAR d minecraft META-INF
WinRAR a -r minecraft.rar lang
copy minecraft.rar minecraft.jar
del /q minecraft.rar
del /q /f lang
del lang\en_US.lang
goto:mudarpt_fim
goto:eof

:mudarpt_fim
cls
echo.
echo.
echo =====  Tarefa foi concluida com sucesso ====
echo.
echo # Arquivo Lang instalado no Minecraft com sucesso
echo # Criado Backup do "minecraft.jar"
echo # Criado Backup do seu arquivo ".lang" personalizado
echo.
echo ===================================================
pause >nul
goto:pt_br
goto:eof

:restaurar
cls
CD %appdata%
CD .minecraft
CD bin
copy /y Backup\minecraft_backup.jar minecraft.jar
goto:restaurar_fim
goto:eof

:restaurar_fim
cls
echo.
echo.
echo ==== Tarefa foi concluida com sucesso ====
echo.
echo # O Arquivo "minecraft.jar" foi restaurado ao anterior -
echo # Consequentemente a traducao foi desinstalada -
echo.
echo.
pause >nul
goto:pt_br
goto:eof

:en_us
cls
echo.
echo.
echo Select the choice (Press the number and enter)
echo.
echo 1 - Install ".lang" file
echo 2 - Uninstall ".lang" file"
echo 3 - About
echo 4 - Exit
echo.
echo.
set /p enmain1=
if %enmain1%==1 goto:mudaren
if %enmain1%==2 goto:restauraren
if %enmain1%==3 goto:about
if %enmain1%==4 goto:exit
goto:eof

:about
cls
echo.
echo.
echo ===== Software developed by Fernando Paladini ====
echo.
echo # Software developed by Fernando Paladini on 05/03/2011
echo # All rights reserved.
echo # Please don't edit - If you edit contact me before
echo.
echo ---------------------- Contact -------------------------
echo.
echo # fernandopalad@gmail.com
echo # nando.futebol@hotmail.com
echo.
echo ---------------------------------------------------------
echo.
pause >nul
goto:en_us
goto:eof

:mudaren
cls
if exist *.lang goto:mudaren1 else (echo The ".lang" file don't exist)
goto:eof

:mudaren1
cls
set path="C:\Program Files\WinRAR\";%path%
MD lang
ren *.lang en_US.lang
copy en_US.lang lang
move lang %appdata%\.minecraft\bin
CD %appdata%
CD .minecraft
CD bin
MD Backup
copy minecraft.jar Backup\minecraft_backup.jar
copy minecraft.jar minecraft.rar
WinRAR d minecraft META-INF
WinRAR a -r minecraft.rar lang
copy minecraft.rar minecraft.jar
del /q minecraft.rar
del /q /f lang
del lang\en_US.lang
goto:mudaren_fim
goto:eof

:mudaren_fim
cls
echo.
echo.
echo =====  Task are complete with successful ====
echo.
echo # Installation are complete with success
echo # Created one Backup of "minecraft.jar"
echo # Created one backup of your ".lang" file
echo.
echo ===================================================
pause >nul
goto:en_us
goto:eof

:restauraren
cls
CD %appdata%
CD .minecraft
CD bin
copy /y Backup\minecraft_backup.jar minecraft.jar
goto:restauraren_fim
goto:eof

:restauraren_fim
cls
echo.
echo.
echo ==== Task complete with successful ====
echo.
echo # The translation are unnistaled
echo.
echo ============================================
echo.
pause >nul
goto:en_us
goto:eof


