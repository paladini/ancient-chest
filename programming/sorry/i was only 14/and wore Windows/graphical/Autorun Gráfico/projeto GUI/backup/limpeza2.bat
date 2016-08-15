echo off
echo Limpando arquivos..
echo.
del C:\RECYCLER\*.* /q
del C:\%windir%\repair\*.* /q
del C:\%windir%\Installer\*.* /q
del /f /q "%userprofile%\*.tmp"
del /f /q "%ALLUSERSPROFILE%\*.tmp"
del /f /q %windir%\repair\*.*
del /f /s /q %windir%\system32\dllcache\*.*
RD /S /q %windir%\system32\dllcache
del /f /s /q %windir%\system32\ReinstallBackups\*.*
RD /S /q %windir%\system32\ReinstallBackups
del /f /s /q %systemdrive%\ MSOCache\*.*
DEL "%HOMEPATH%\Config~1\Temp\*.*" /F /S /Q
DEL /F /S /Q C:\WINDOWS\Temp\*.*
DEL "%WINDIR%\Tempor~1\*.*" /F /S /Q
RD /S /Q "%HOMEPATH%\Config~1\Temp"
MD "%HOMEPATH%\Config~1\Temp"
RD /S /Q C:\WINDOWS\Temp\
MD C:\WINDOWS\Temp
echo.
echo Arrumando Erro de Contatos no MSN...
CD\
CD %programfiles%
CD Windows Live
CD Contacts
erase /q /f wldlog.dll
erase /q wldlog.dll
del %ProgramFiles%\Windows Live\contacts\wldlog.dll
del C:\Program files\Windows live\contacts\wldlog.dll
del C:\Arquivos de Programas\Windows Live\contacts\wldlog.dll
echo Erro de contatos do MSN resolvido.
echo.
echo.
CD\
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
NET TIME a.ntp.br /SET /Y
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
echo.
echo Deletando arquivos recebidos do MSN...
echo.
CD\
CD C:\users\%username%\documents
RD /s /q meus arquivos recebidos 
del /f /s /q C:\users\%username%\documents\meus arquivos recebidos
del 
echo.
echo Arquivos Recebidos deletados com sucesso.
echo.
echo Deletando Registros do MSN..
echo.
CD\
if exist C:\users\%username%\documents\meus registros (del /f meus registros) else echo Nada foi encontrado
del /f /q /s C:\users\%username%\documents\meus registros\*.*
RD /s /q C:\users\%username%\documents\meus registros
echo.
echo Removendo Worms do MSN - Se existente...
echo.
RMDIR /s /q 123
echo REGEDIT4 >>%SystemDrive%\fx.reg
echo. >>%SystemDrive%\fx.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run] >>%SystemDrive%\fx.reg
echo "Shell"=- >>%SystemDrive%\fx.reg
regedit.exe /s %SystemDrive%\fx.reg
del /q %SystemDrive%\fx.reg
if exist %SystemRoot%\system32\msnmsnr.scr attrib -s -h -r %SystemRoot%\system32\msnmsnr.scr
if exist %SystemRoot%\system32\msnmsnr.scr del /q %SystemRoot%\system32\msnmsnr.scr
if exist c:\RemotoMSN.txt attrib -s -h -r c:\RemotoMSN.txt
if exist c:\RemotoMSN.txt del /q c:\RemotoMSN.txt
cd %SystemRoot%\system\
for %%a in (msnmsgr.cmd,taskmam.exe,down32.cmd,atualiza2.gif,atualiza.gif msn.dat,xsmith.scr,it.cmd,br.cmd,gr.cmd,bb.cmd,nc.cmd,hs.cmd,cx.cmd,un.cmd,ba.cmd) do 
set /p var= %%a
If Exist %var% attrib -s -h -r %var%
if exist %var% del /q %var%
echo.
echo Se existente, o Worms de MSN foi removido.
echo.
echo Aumentando a velocidade do menu iniciar...
REG ADD "HKEY_CURRENT_USER\control panel\desktop" /v MenuShowDelay /t REG_SZ /d 1 /f
echo Velocidade Aumentada (requer reinicializacao)
echo.
echo Aumentando Velocidade do Internet Explroer ( XP ou Anteriores)
echo.
REG DELETE HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace /va {D6277990-4C6A-11CF-8D87-00AA0060F5BF} /f
echo Adicionado com sucesso
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