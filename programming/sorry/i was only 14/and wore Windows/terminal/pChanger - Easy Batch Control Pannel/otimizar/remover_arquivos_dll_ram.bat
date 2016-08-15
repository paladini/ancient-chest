@echo off
REM Evita carregar arquivos DLL foram da RAM
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v AlwaysUnloadDLL /t REG_SZ /d 1 /f
exit