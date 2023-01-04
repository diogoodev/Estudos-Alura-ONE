@echo off

rem Obtém a data atual no formato YYYY-MM-DD
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%"
set "YYYY=%dt:~0,4%"
set "MM=%dt:~4,2%"
set "DD=%dt:~6,2%"
set "data=%YYYY%-%MM%-%DD%"

rem Adiciona todas as alterações ao índice do Git
git add .

rem Faz o commit com a mensagem "Estudos do dia YYYY-MM-DD"
git commit -m "Estudos do dia %data%"

rem Envia os commits para o repositório remoto
git push

echo Commit e push realizados com sucesso!