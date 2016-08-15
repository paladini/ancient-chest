@echo off
REM [Habilitar] Remover e impedir opção desligar computador
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Po licies\Explorer" /v NoClose /t REG_DWORD /d 0x00000001 /f 
exit