REM [Habilitar] Remover executar do menu inciar
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Po licies\Explorer" /v NoRun /t REG_DWORD /d 0x00000001 /f 
exit