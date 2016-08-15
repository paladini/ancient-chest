title "Batch MSN DLL Register"
echo Registrando DLL's do MSN...
echo.
echo Por favor aguarde um momento...
regsvr32 softpub.dll /s
regsvr32 Wintrust.dll /s
regsvr32 Initpki.dll /s
regsvr32 Dssenh.dll /s
regsvr32 Rsaenh.dll /s
Regsvr32 Gpkcsp.dll /s
Regsvr32 Sccbase.dll /s
Regsvr32 Slbcsp.dll /s
Regsvr32 Mssip32.dll /s
Regsvr32 Cryptdlg.dll /s
echo.
echo.
echo Processo Terminou com sucesso!!
echo Pressione qualquer tecla para sair...
echo.
echo.
echo #Criado por Fernando Paladini (pCreations)
pause >nul