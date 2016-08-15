@echo off
REM [habilitar] alteração de papel de parede
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Po licies\ActiveDesktop" /v NoChangingWallPaper /t REG_DWORD /d 0x00000001 /f 
exit