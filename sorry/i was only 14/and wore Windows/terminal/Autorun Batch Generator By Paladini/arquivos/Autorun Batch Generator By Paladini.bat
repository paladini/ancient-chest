@echo off
echo.
echo.
echo Deseja criar um Autorun para seu PenDrive / Sistema? (S / N)
echo.
echo.

set /p resposta=
if %resposta%==s goto:inicio
if %resposta%==n goto:sair

:inicio
cls
echo.
echo Ola %username% , aqui vao instrucoes para uso:
echo.
echo # Quando perguntado, use a sintaxe: [unidade] (arquivo)
echo # Ex: C:\Arquivos de Programas\123.exe
echo # No fim do processo, todos os arquivos estarao na pasta "autorun"
echo.
echo Para continuar pressione qualquer tecla.
pause >nul
goto:etapa1
goto:eof

:etapa1
cls
echo.
echo Deseja iniciar que programa no Autorun? (Siga as intrucoes)
echo.
echo [unidade\caminho] (arquivo.extensão)
set /p programa=
echo [AUTORUN] >autorun.inf
echo open=%programa% >>autorun.inf
echo.
cls
echo Deseja adicionar mais algum programa?
echo.
echo 1 - Nao
echo 2 - Desejo adicionar mais 1 programa
echo 3 - Desejo adicionar mais 2 programas
echo 4 - Sair
echo.
echo.
set /p resposta2=
if %resposta2%==1 goto:etapa2
if %resposta2%==2 goto:adc1
if %resposta2%==3 goto:adc2
if %resposta2%==4 goto:sair
goto:eof

:etapa2
cls
echo.
echo Qual icone deseja colocar? (Siga as instrucoes)
echo.
echo [unidade\caminho] (imagem.extensão)
set /p icone=
echo ico=%icone% >>autorun.inf
echo.
ping -n 3 127.0.0.0 >nul
MD Autorun
move %icone% Autorun
move %programa% Autorun
move %programa1% Autorun
move %programa2% Autorun
move autorun.inf Autorun
cls
goto:sobre
goto:eof

:sobre
cls
echo.
echo.
echo ======================= Info ===========================
echo.
echo  # Nao me responsabilizo por eventuais danos.
echo  # Desenvolvido por Fernando Paladini.
echo  # Todos os direitos reservados ao criador.
echo.
echo =========================================================
goto:sair
goto:eof

:adc1
cls
echo.
echo Deseja iniciar que programa no Autorun? (Siga as instrucoes)
echo.
echo [unidade\caminho] (arquivo.extensão)
set /p programa1=
echo open=%programa1% >>autorun.inf
echo Adicionando...
ping -n 3 127.0.0.0 >nul
goto:etapa2
goto:eof

:adc2
cls
echo.
echo Deseja iniciar que programa no Autorun? (siga as instrucoes)
echo.
echo [unidade\caminho] (arquivo.extensão)
set /p programa2=
echo open=%programa2% >>autorun.inf
echo Adicionando...
ping -n 3 127.0.0.0 >nul
goto:adc1
goto:eof

:sair
echo.
echo ======================================
echo ===== Obrigado pro Baixar ===================
echo ======================================
echo ========Desenvolvido por Fernando Paladini=======
echo ======================================
echo.
echo Espere 10 Segundos ateh sair...
ping -n 10 127.0.0.0 >nul
exit
goto:eof