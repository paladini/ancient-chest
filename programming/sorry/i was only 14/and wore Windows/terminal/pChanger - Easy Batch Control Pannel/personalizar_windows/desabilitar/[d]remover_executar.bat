REM [Desabilitar] Remover Executar do menu iniciar
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Po licies\Explorer" /v NoRun /t REG_DWORD /d 0x00000000 /f 
exit