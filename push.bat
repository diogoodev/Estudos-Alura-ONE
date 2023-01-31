@echo off

rem Muda para o diretório "D:\Diogo\Estudos-Alura-ONE"
cd /d "D:\Diogo\Estudos-Alura-ONE"

rem Adiciona todos os arquivos na área de stage
git add .

rem Obtém a data atual do sistema
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%"
set "YYYY=%dt:~0,4%"
set "MM=%dt:~4,2%"
set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%"
set "Min=%dt:~10,2%"
set "Sec=%dt:~12,2%"

set "data=%DD%-%MM%-%YYYY%"

rem Faz o commit com a mensagem "Estudos do dia $data"
git commit -m "Estudos do dia %data%"

rem Faz o push para o repositório no GitHub
git push origin main