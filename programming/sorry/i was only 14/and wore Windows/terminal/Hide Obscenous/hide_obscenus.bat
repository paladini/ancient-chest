@echo off >nul

:boas
cls
echo.
echo =============================================
echo =============================================
echo ======= Hide Obscenus By Paladini v1.0=======
echo =============================================
echo =============================================
echo.
echo.
echo.
echo Aguarde 4 Segundos para continuar...
ping -n 4 127.0.0.0 >nul
goto:inicio
goto:eof

:inicio
cls
echo O que voce deseja fazer?
echo.
echo 1 - Converter Arquivos (Esconder)
echo 2 - Desconverter Arquivos (Mostrar)
echo 3 - Sobre
echo 4 - Sair
echo.
set/p "op=Digite sua Op‡Æo (1/2/3\4) >> "
if %op%==1 goto:hide
if %op%==2 goto:deshide
if %op%==3 goto:sobre
if %op%==4 goto:exit
goto:inicio
goto:eof

:exit
cls
echo.
echo.
echo ======================================
echo ========== Obrigado por Baixar ==============
echo ======================================
echo.
echo.
echo ====   Hide Obscenus v1.0 Beta by paladini =========
echo.
ping -n 6 127.0.0.0 >nul
exit
goto:eof

:sobre
cls
echo.
echo.
echo ===========================================================
echo.
echo  # Versao 1.0 Beta - Lancada dia 03/02/2011
echo  # Desenvolvido por "Paladini"
echo  # Nao me responsabilizo por seus atos ou consequencias
echo.
echo ============================================================
pause >nul
echo Aperte qualquer tecla para voltar ao Menu
goto:inicio
goto:eof

:fim
cls
echo.
echo.
echo ============= Processo Terminou com Sucesso ================
echo.
echo # Foi criado um arquivo de Log chamado "log.txt"
echo.
echo.
echo Para continuar aperte qualquer tecla...
pause >nul
goto:inicio
goto:eof

:hide
cls
if exist %temp%\senha.txt goto deshide
echo Digite uma Senha (Sera usada para desconverter os arquivos)
set /p senha=
(echo senha:%senha%)>%temp%\senha.txt
cls
echo Arquivos Convertidos com Sucesso no dia %date% >>log.txt
ren *.jpg *.jjj & echo .jpg Convertido >>log.txt
ren *.mpg *.mmm & echo .mpg Convertido >>log.txt
ren *.bmp *.bbb & echo .bmp Convertido >>log.txt
ren *.avi *.aaa & echo .avi Convertido >>log.txt
ren *.gif *.ggg & echo .gif Convertido >>log.txt
ren *.jpeg *.jij & echo .jpeg Convertido >>log.txt
attrib *.* +h +s
attrib *.bat -h -s
echo.
echo Arquivos Convertidos com sucesso
echo.
goto:fim
goto:eof

:deshide
cls
echo.
echo Qual eh a senha?
set /p quale=
FOR /F tokens=2 delims=:" %%i in (%temp%\senha.txt) do (set /p pass2= %%i)
if %quale%==%pass2% (goto:deshide2) ELSE (goto:error)
goto:eof

:deshide2
cls
attrib *.* -h -s
echo Arquivos Desconvertidos com Sucesso no dia %date% >>log.txt
ren *.jjj *.jpg & echo .jjj Desconvertido >>log.txt
ren *.bbb *.bmp & echo .bbb Desconvertido >>log.txt 
ren *.aaa *.avi & echo .aaa Desconvertido >>log.txt 
ren *.ggg *.gif & echo .ggg Desconvertido >>log.txt 
ren *.mmm *.mpg & echo .mmm Desconvertido >>log.txt 
ren *.jij *.jpeg & echo .jij Desconvertido >>log.txt
echo.
echo Arquivos Desconvertidos com sucesso
echo.
goto:fim
goto:eof

:error
echo.
echo A Senha esta errada!
echo.
pause
goto:eof