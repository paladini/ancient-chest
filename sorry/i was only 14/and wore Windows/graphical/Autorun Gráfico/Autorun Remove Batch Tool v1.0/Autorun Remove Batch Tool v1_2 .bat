@echo off
:inicio
title AutoRun Remove Batch Tool By Fernando Paladini
cls
echo.
echo.
echo ===========================================================================
echo ================== AutoRun Remove Batch Tool v1.0 Beta ====================
echo ==================== By Fernando Paladini - 2011 ==========================
echo ===========================================================================
echo.
echo.
echo                       Pressione qualquer tecla
pause >nul
goto:menu
goto:eof

:menu
cls
echo.
echo.
echo  Escolha uma das opcoes:
echo.
echo 1 - Procurar e Remover em C:\
echo 2 - Sobre
echo 3 - Sair
echo.
echo.
echo (Digite um numero e pressione enter)
echo.
set /p menup=
if %menup%==3 goto:sair
if %menup%==2 goto:sobre
if %menup%==1 goto:prc
goto:eof

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
echo    Versao 1.0 Beta - 2011 - Todos os Direitos Reservados ao Criador
echo.
echo.
pause
ping 0.0.0. -w 7.000
exit
goto:eof
goto end

:sobre
cls
echo.
echo.
echo.
echo =================   O que ele faz? / Futuras Versoes =======================
echo.
echo.
echo # Esse programa procura e deleta arquivos do estilo de "Autorun", 
echo # "Autoexec", entre outros.
echo # As futuras versoes provavelmente terao novos virus adicionados 
echo # e novas ferramentas talvez ate nova interface.
echo.
echo.
echo.
echo ================= Versao do Programa - v1.0 Beta ============================
echo.
echo.
echo # O programa foi inteiramente desenvolvido por Fernando Paladini em 2011.
echo # Versao Atual do Arquivo: v1.0 Beta
echo # Nao me responsabilizo por nada que eventualmente possa
echo # acontecer no seu computador
echo.
echo.
echo.
pause
set p/ go= Digite "voltar" para voltar ao menu principal
if /i %go% equ "voltar" (goto menu) ELSE (goto sair)
goto:eof
goto end

:prc
cls
echo.
echo.
echo.
echo Voce esta usando o computador %computername%.
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
set /p continuar= Digite "aceito" se voce concorda: 
if %continuar%==aceito ( goto:prc2 ) ELSE ( goto:sair )
goto:eof
goto end

:prc2
cls
CD\
IF Exist C:\autorun.* ( echo Foi encontrado um arquivo Autorun em C:\ ) 
IF exist C:\autorun.* ( echo O Arquivo encontrado foi deletado em C:\ ) 
IF EXIST C:\autorun.* ( del C:\autorun.* ) 
if exist C:\autoexec.* ( echo Foi encontrado um arquivo Autoexec em C:\ ) 
if exist C:\autoexec.* ( echo Arquivo encontrado foi deletado em C:\ )
if exist C:\autoexec.* ( del C:\autoexec.* ) 
if exist C:\autoexe.* ( echo Foi encontrado um arquivo autoexe ) 
IF exist C:\autoexe.* ( echo Arquivo encontrado foi deletado ) 
if exist C:\autoexe.* ( del C:\autoexe.* )
pause
goto:terminar
goto end
goto:eof

:terminar
cls
echo.
echo.
echo Atividade completada com sucesso!!!
echo.
echo.
echo (Para sair pressione qualquer tecla)
pause >nul
goto:end
goto:eof


                