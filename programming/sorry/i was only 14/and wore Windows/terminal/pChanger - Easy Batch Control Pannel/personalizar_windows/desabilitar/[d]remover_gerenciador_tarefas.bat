REM [Desabilitar] Remover Gerenciador de Tarefas
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Po licies\System" /v DisableTaskMgr /t REG_DWORD /d 0x00000000 /f 
exit