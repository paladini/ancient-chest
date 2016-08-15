@echo off
REM [Desabilitar] Esconder relogio do Windows	
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Po licies\Explorer" /v HideClock /t REG_DWORD /d 0x00000001 /f 
exit