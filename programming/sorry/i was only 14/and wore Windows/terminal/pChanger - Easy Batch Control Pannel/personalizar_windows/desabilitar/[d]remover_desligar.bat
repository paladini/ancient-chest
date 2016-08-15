@echo off
REM [Desabilitar] Remover e impedir opção desligar
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Po licies\Explorer" /v NoClose /t REG_DWORD /d 0x00000000 /f 
exit