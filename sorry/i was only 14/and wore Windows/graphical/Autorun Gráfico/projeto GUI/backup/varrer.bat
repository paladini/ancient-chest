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
echo Preparando para eliminar WgaTray.exe...
ping -n 5 localhost >nul
taskkill /F /IM WgaTray.exe
taskkill /F /IM Winlogon.exe
For %%x in (WgaTray.exe,Wgalogon.dll) do (
Attrib -r -a -s -h "%SystemRoot%\System32\%%x"
Del /f /q "%SystemRoot%\System32\%%x"
If not Exist "%SystemRoot%\System32\%%x" (Echo.%%x has been deleted succesfully.) else (Echo.%%x cannot be deleted.)
)
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft Windows\ NT\CurrentVersion\Winlogon\Notify" /F
echo.
echo WgaTray.exe Excluido!


                