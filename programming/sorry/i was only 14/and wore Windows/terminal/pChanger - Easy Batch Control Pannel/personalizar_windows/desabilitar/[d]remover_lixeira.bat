@echo off
REM [Desabilitar] Remoção da Lixeira no Desktop
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Po licies\NonEnum" /v {645FF040-5081-101B-9F08-00AA002F954E} /t REG_DWORD /d 0x00000000 /f 
exit