@echo off
REM [Desabilitar] Alteração de Papel de Parede
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Po licies\ActiveDesktop" /v NoChangingWallPaper /t REG_DWORD /d 0x00000000 /f 
exit