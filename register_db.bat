@ECHO OFF
:_start


set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%


title Set new backup database
SET /P database=Insert database name:  
SET /P ip_database=Insert database IP (not port): 
SET /P port_database=Insert IP port: 
SET /P user_database=Insert database user: 
SET /P pass_database=Insert database pass: 
SET /P backup_dir=Insert directory where backup will be saved : 

ECHO =============// CONFIRM //==================
ECHO Database : %database%
ECHO IP and PORT : %ip_database% : %port_database%
ECHO User and Pass :  %user_database%  %pass_database%
ECHO Dir : %backup_dir%

SET /P conf=Is it correct?[Y/N] : 

if /I not %conf% == Y GOTO _start

SET name_file=config-%database%
if not exist %cd%\db-config mkdir %cd% db-config

cd db-config
type NUL > %name_file%.bat
echo  @ECHO OFF %NL% SET database=%database%%NL% SET ip_database=%ip_database%%NL% SET port_database=%port_database%%NL% SET user_database=%user_database%%NL% SET pass_database=%pass_database%%NL% SET backup_dir=%backup_dir%> %name_file%.bat
cd ..
CLS
ECHO Success !!

pause
CLS