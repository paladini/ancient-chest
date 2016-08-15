@echo
:inicio
title AutoRun Remove Batch Tool By Fernando Paladini
cls
echo.
echo.
echo ===========================================================================
echo ================== AutoRun Remove Batch Tool v1.1 Beta ====================
echo ==================== By Fernando Paladini - 2011 ==========================
echo ===========================================================================
echo.
echo.
ping 0.0.0. -w 3.000
cls
echo.
echo.
echo  Escolha uma das opcoes:
echo.
echo 1 - Procurar e Remover em C:\
echo 2 - Remover arquivos desnecessarios e Arrumar Alguns Erros(Recomendado tbm)
echo 3 - Sobre
echo 4 - Sair
echo.
echo.

@Choice /c:1234
if errorlevel 4 goto:sair
if errorlevel 3 goto:sobre
if errorlevel 2 goto:prd1
if errorlevel 1 goto:prc

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
echo    Versao 1.1 Beta - 2011 - Todos os Direitos Reservados ao Criador
echo.
echo.
pause
ping 0.0.0. -w 7.000
exit
goto end

:sobre
cls
echo.
echo.
echo.
echo =================   O que ele faz? / Futuras Versoes =======================
echo.
echo.
echo # Tira vírus como "RelevantKnowledge" e "Autorun.bat" .
echo # Arruma alguns erros do MSN, fecha processos desnecessarios.
echo # Limpa arquivos temporarios,cookies,history...
echo # As futuras versoes provavelmente terao novos virus adicionados 
echo # e novas ferramentas talvez ate nova interface.
echo.
echo.
echo.
echo ================= Versao do Programa - v1.1 Beta ============================
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
set p/ go= Escolha uma opcao ( Banco de Dados / Voltar)
if /i %go% equ "voltar" (goto inicio) ELSE (goto sair)
if /i %go% equ "Banco de Dados"  (goto dados) ELSE (goto sair)
goto end

:dados
cls
echo.
echo.
echo  ============= Aqui estao os virus detectados por esse programa =============
echo.
echo.
echo  # Arquivos do estilo "Autorun.bat"
echo  # Relevant Knowledge
echo  # Adware:Win32/ClickPotato 
echo.
echo.
echo ==============================================================================
echo.
echo.
echo 1 - Menu principal
echo 2 - Sair
choice /c:12
if errorlevel 2 goto:sair
if errorlevel 1 goto:inicio
goto end

:prd1
cls
echo.
echo.
echo Ola %username%, voce esta usando o computador %computername%
echo A versao do seu sistema eh $v
echo.
echo.
echo      ## ============= Eh Recomendado que: ================= ##
echo.
echo  ## Salve e feche todos os programas,
echo  ## Feche MSN, Windows Media, e todos os programas possiveis.
echo  ## O programa ira fazer uma varredura completa em busca de
echo  ## erros, virus,problemas,arquivos velhos,etc.
echo.
echo  ## Nao nos responsabilizamos por eventuais problemas no computador
echo.
echo ================= Aperte 1 se aceita ========================
echo ================= Aperte 2 se deseja sair ===================
echo.
echo.
choice /c:12
if errorlevel 2 goto:sair
if errorlevel 1 goto:prd

:prd
cls 
echo Limpando arquivos..
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
echo.
echo Limpando arquivos temporários...
echo.
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
echo ¦¦ 10 Por Cento
rd /s /q %temp%
md %temp%
echo.
echo ¦¦¦¦ 30 por Cento
echo Limpando Lixeira (Somente XP e anteriores)...
deltree /y c:\recycled\
deltree /y c:\recycler\
deltree /y c:\recicled
echo Lixeira Limpa.
echo.
echo Limpando arquivos temporarios...
echo ¦¦¦¦¦¦ 50 por cento
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
echo Arquivos temporarios apagados.
echo.
echo ¦¦¦¦¦¦¦¦¦¦ 60 por cento
echo Limpando History...
deltree /y c:\windows\history
echo Cookies...
deltree /y c:\windows\cookies
echo Recent...
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ 80 por cento
deltree /y c:\windows\recent
echo Limpeza de History / Cookies / Recent Completada!
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
echo Arrumando Erro de Contatos no MSN...
del %ProgramFiles%\Windows Live\contacts\wldlog.dll
del C:\Program files\Windows live\contacts\wldlog.dll
del C:\Arquivos de Programas\Windows Live\contacts\wldlog.dll
echo Erro de contatos do MSN resolvido.
echo.
echo.
regsvr32 softpub.dll /s
regsvr32 Wintrust.dll /s
regsvr32 Initpki.dll /s
regsvr32 Dssenh.dll /s
regsvr32 Rsaenh.dll /s
Regsvr32 Gpkcsp.dll /s
Regsvr32 Sccbase.dll /s
Regsvr32 Slbcsp.dll /s
Regsvr32 Mssip32.dll /s
Regsvr32 Cryptdlg.dll /s
echo.
echo Arrumando Hora de Acordo com Servidor Oficial do Brasil
echo.
net time /setsntp:a.ntp.br
echo Hora Arrumada!
echo.
echo Deletando processos desnecessarios...
taskkill /f /im PnkBstrB.exe
taskkill /f /im PnkBstrA.exe
taskkill /f /im SMSvcHost.exe
taskkill /f /im gdkpsw.exe
taskkill /f /im explorer.exe
start explorer.exe
echo Processos desnecessarios deletados.
CD\
CD C:\users\%username%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ 100 Por Cento
echo Limpeza Totalmente Completada
echo.
echo.
echo.
pause
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
echo Procurando e deletando virus RelevantKnowledge...
taskkill /f /im rlservice.exe
taskkill /f /im rlvknlg.exe
taskkill /f /im relevantknowledge.exe
taskkill /f /im relevantknowledge.exerk.exe
taskkill /f /im rk.exe
echo.
echo Retirando vírus Relevant Knowledge...
deltree /y %ProgramFiles%\relevantknowledge
deltree /y %programfiles%\relevant knowledge
del %programfiles%\relevantknowledge
del %programfiles%\relevant knowledge
REG DELETE /f HKLM\Software\MICROSOFT\WINDOWS NT\CURRENTVERSION\WINLOGON\NOTIFY\RelevantKnowledge
echo Se existente o arquivo foi deletado.
echo.
echo Procurando e retirando virus ClickPotato...
del %programfiles%\ClickPotatoLite\bin\10.0.%varies%.0\
del %programfiles%\ClickPotatoLite\bin\10.0.%varies%.0\firefox\extensions\
del %programfiles%\ClickPotatoLite\bin\10.0.%varies%.0\firefox\extensions\plugins\
del <start menu>\ClickPotato\
if exist del %programdata%\ClickPotatoLiteSA\
if exist C:\%programfiles%\123 (del C:\%programfiles%\123)
if exist C:\%programfiles%\123 (deltree /y 123)
if exist C:\%programfiles%\123 (del 123)
REG DELETE /f HKLM\SOFTWARE\ClickPotatoLite
REG DELETE /f HKLM\SOFTWARE\Classes\MenuButtonIE.ButtonIE
REG DELETE /f HKLM\SOFTWARE\Classes\MenuButtonIE.ButtonIE.1
REG DELETE /f HKLM\SOFTWARE\Classes\AppID\MenuButtonIE.DLL
REG DELETE /f HKLM\SOFTWARE\Classes\CLSID\{7A3D6D17-9DD5-4C60-8076-D1784DABAF8C}
REG DELETE /f HKLM\SOFTWARE\Classes\AppID\{11C27351-716B-4052-9361-E3B0A3F8221C}
REG DELETE /f HKLM\SOFTWARE\Classes\TypeLib\{814BAA91-DC22-4350-87D6-0C86E93F7F08}
REG DELETE /f HKLM\SOFTWARE\Classes\ClickPotatoLiteAX.Info
REG DELETE /f HKLM\SOFTWARE\Classes\ClickPotatoLiteAX.Info.1
REG DELETE /f HKLM\SOFTWARE\Classes\ClickPotatoLiteAX.UserProfiles
REG DELETE /f HKLM\SOFTWARE\Classes\ClickPotatoLiteAX.UserProfiles.1
REG DELETE /f HKLM\SOFTWARE\Microsoft\Internet Explorer\Extensions\{B58926D6-CFB0-45d2-9C28-4B5A0F0368AE}
echo Se existente o arquivo foi deletado.
echo.
pause
goto:sair
goto end


                