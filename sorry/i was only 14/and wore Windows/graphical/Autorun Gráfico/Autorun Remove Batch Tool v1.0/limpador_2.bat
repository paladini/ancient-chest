@@echo off
:inicio
title AutoRun Remove Batch Tool By Fernando Paladini
cls
echo.
echo.
echo ==
echo
echo.
echo.
ping 0.0.0. -w 3.000
cls
echo.
echo.
echo  Escolha uma das opcoes:
echo.
echo 1 - Procurar e Remover em Todos os Discos Locais
echo 2 - Procurar e Remover em C:\
echo 3 - Sobre
echo 4 - Sair
echo.
echo.

@Choice /c:1234
if errorlevel 4 goto:sair
if errorlevel 3 goto:sobre
if errorlevel 2 goto:prc
if errorlevel 1 goto:pra

:sair
cls
echo.
echo.
echo.
echo ==                   Obrigado por Baixar                    ==
echo ==             Autorun Remove Batch Tool - 2011             ==
echo ==                   By Fernando Paladini                   ==        
echo.
echo.
echo.
echo    Versao 1.0 - 2011 - Todos os Direitos Reservados ao Criador
echo.
echo.
pause
ping 0.0.0. -w 7.000
exit
goto end

:sobre
cls
echo.
echo Olá
goto end


:prc
cls
echo.
echo.
echo.
set /p nome= Qual eh o seu nome?
echo.
echo.
echo.
echo %nome% , voce esta ciente que:
echo.
echo.
echo         ##  Eh muito recomendado que voce feche todas as suas tarefas.
echo         ##  Desligue todos os pendrives e midias do tipo. 
echo         ##  Tire todos os CD's/DVD's dos leitores de discos.
echo.
echo.
echo           - Esteja de acordo que o processo pode ser demorado.
echo           - Quando o processo for finalizado, uma mensagem aparecera.
echo.         
echo.         
echo.         
echo         ##  Os Arquivos serao procurados no Disco Local C:\
echo         ##  O Processo pode demorar como não.
echo         ##  A Varredura comecara assim que concordar...
echo.
echo.
set /p continuar= Digite "a" se voce concorda: 
if %continuar%==a (goto prc2) ELSE (goto sair)
goto end

:prc2
cls
CD\
IF Exist C:\Autorun.* (echo Foi encontrado um arquivo Autorun em C:\) 
IF exist C:\autorun.* (echo O Arquivo encontrado foi deletado em C:\) 
IF EXIST C:\autorun.* (del C:\autorun.* ) 
if exist C:\autoexec.* (echo Foi encontrado um arquivo Autoexec) 
if exist C:\autoexec.* (echo Arquivo encontrado foi deletado) >
IF EXIST C:\autoexec.* (del C:\autoexec.* ) 
if exist C:\autoexe.* (echo Foi encontrado um arquivo autoexe) 
IF exist C:\autoexe.* (echo Arquivo encontrado foi deletado) 
IF EXIST C:\autoexe.* (del C:\autoexe.* )
pause
goto continua2
goto end

:continua2
pause
cls
echo O que voce deseja fazer agora?
echo.
echo.
echo 1 - Voltar ao menu principal
echo 2 - Fazer uma limpeza no disco local C:\
echo 3 - Fazer uma limpeza completa no computador
echo 4 - Sobre
echo 5 - Sair
echo.
echo.
@Choice /c:12345
if errorlevel 5 goto:sair
if errorlevel 4 goto:sobre
if errorlevel 3 goto:pra
if errorlevel 2 goto:prc
if errorlevel 1 goto:inicio
pause
goto end


                