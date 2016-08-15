@echo off
REM Bloquera propaganda de MSN
echo # Inicio Bloqueio de Propagandas do MSN>>%windir%\system32\drivers\etc\hosts
echo 0.0.0.0 rad.msn.com>>%windir%\system32\drivers\etc\hosts
echo 0.0.0.0 rad.live.com>>%windir%\system32\drivers\etc\hosts
echo 0.0.0.0 view.atdmt.com>>%windir%\system32\drivers\etc\hosts
echo # Fim Bloqueio de Propagandas do MSN>>%windir%\system32\drivers\etc\hosts
exit