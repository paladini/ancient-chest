@echo off
REM Iniciar o sistema com Num Lock ligado
reg add "HKEY_USERS\.DEFAULT\Control Panel\Keyboard" /f /v InitialKeyboardIndicators /t REG_SZ /d 2
exit