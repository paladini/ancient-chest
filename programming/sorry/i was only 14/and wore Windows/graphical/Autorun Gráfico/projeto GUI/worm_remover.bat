@echo off
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ Execute essa ferramenta em Modo de Seguranca บ
echo ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo บ Ferramenta para Remocao do worm บ
echo ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo บ Para executar a ferramenta, pressione qualquer tecla. บ
echo บ Para sair, feche essa janela. บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
cls
echo REGEDIT4 >>%SystemDrive%\fx.reg
echo. >>%SystemDrive%\fx.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run] >>%SystemDrive%\fx.reg
echo "Shell"=- >>%SystemDrive%\fx.reg
regedit.exe /s %SystemDrive%\fx.reg
del /q %SystemDrive%\fx.reg
if exist %SystemRoot%\system32\msnmsnr.scr attrib -s -h -r %SystemRoot%\system32\msnmsnr.scr
if exist %SystemRoot%\system32\msnmsnr.scr del /q %SystemRoot%\system32\msnmsnr.scr
if exist c:\RemotoMSN.txt attrib -s -h -r c:\RemotoMSN.txt
if exist c:\RemotoMSN.txt del /q c:\RemotoMSN.txt
cd %SystemRoot%\system\
if exist msnmsgr.cmd attrib -s -h -r msnmsgr.cmd
if exist msnmsgr.cmd del /q msnmsgr.cmd
if exist taskmam.exe attrib -s -h -r taskmam.exe
if exist taskmam.exe del /q taskmam.exe
if exist down32.cmd attrib -s -h -r down32.cmd
if exist down32.cmd del /q down32.cmd
if exist atualiza2.gif attrib -s -h -r atualiza2.gif
if exist atualiza2.gif del /q atualiza2.gif
if exist atualiza.gif attrib -s -h -r atualiza.gif
if exist atualiza.gif del /q atualiza.gif
if exist msn.dat attrib -s -h -r msn.dat
if exist msn.dat del /q msn.dat
if exist xsmith.scr attrib -s -h -r xsmith.scr
if exist xsmith.scr del /q xsmith.scr 
if exist it.cmd attrib -s -h -r it.cmd
if exist it.cmd del /q it.cmd
if exist br.cmd attrib -s -h -r br.cmd
if exist br.cmd del /q br.cmd
if exist gr.cmd attrib -s -h -r gr.cmd
if exist gr.cmd del /q gr.cmd
if exist bb.cmd attrib -s -h -r bb.cmd
if exist bb.cmd del /q bb.cmd
if exist nc.cmd attrib -s -h -r nc.cmd
if exist nc.cmd del /q nc.cmd
if exist hs.cmd attrib -s -h -r hs.cmd
if exist hs.cmd del /q hs.cmd
if exist cx.cmd attrib -s -h -r cx.cmd
if exist cx.cmd del /q cx.cmd
if exist un.cmd attrib -s -h -r un.cmd
if exist un.cmd del /q un.cmd
if exist ba.cmd attrib -s -h -r ba.cmd
if exist ba.cmd del /q ba.cmd
if exist msnmsgr.cmd goto NR
if exist taskmam.exe goto NR
cls
echo Remocao concluida com exito!
echo.
echo Para limpar arquivos restantes do worm/trojan, siga os seguintes passos:
echo.
echo 1. Abra o Internet Explorer
echo 2. Clique no Menu Ferramentas
echo 3. Selecione Opcoes da Internet
echo 4. Clique em Excluir arquivos...
echo 5. Marque a caixa Excluir todo o conteudo off-line
echo 6. Clique em OK
echo.
pause
exit
:NR
cls
echo ATENCAO!!!
echo Ocorreu um erro ao apagar os arquivos do worm!
echo Certifique-se que a ferramenta foi executada no Modo de Seguranca.
echo.
pause
exit