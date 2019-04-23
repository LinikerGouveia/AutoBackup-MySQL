@ECHO OFF
SET LOCAL_EXEC=%cd%
ECHO *---------------------------- Starting backup -------------------------------*
ECHO Database : %database%
ECHO IP PORT : %ip_database% : %port_database%
call %cd%\exec\dir.bat

pushd C:\Program Files\MySQL\MySQL Server 5.5\bin
call mysqldump --host %ip_database% -P %port_database% -u %user_database% --password=%pass_database% %database% > "%file_dir%\%database%.sql"


ECHO *----------------------------------------------------------------------------*
echo Base: %database% 		data: %date%  hora: %time%		success! >> %start_dir%\log\backup-%date:~6,4%%date:~3,2%%date:~0,2%.txt
