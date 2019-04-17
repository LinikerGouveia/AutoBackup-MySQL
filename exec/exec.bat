@ECHO OFF
SET LOCAL_EXEC=%cd%
ECHO =============// COMEÇANDO OPERACAO //==================
ECHO O BANCO DE DADOS ESCOLHIDO FOI : %database%
ECHO IP PORTA : %ip_database% : %port_database%
ECHO USUARIO  %user_database%   SENHA %pass_database%
call %cd%\exec\dir.bat

pushd C:\Program Files\MySQL\MySQL Server 5.5\bin
mysqldump --host %ip_database% -P %port_database% -u %user_database% --password=%pass_database% %database% > "%file_dir%\%database%.sql"


ECHO =======//==========//===================//======
ECHO ======= BACKUP CONCLUIDO BASE: %database% ======
