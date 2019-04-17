@ECHO OFF
:_start


set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%


title Registrar novo backup
SET /P database=insert database name:  
SET /P ip_database=insert database ip: 
SET /P port_database=insert database ip port: 
SET /P user_database=insert database username: 
SET /P pass_database=insert database password: 
SET /P backup_dir=Paste here a directory to save backup : 

ECHO * -------------- Confirm  -------------------- *
ECHO DATABASE : %database%
ECHO IP AND PORT: %ip_database% : %port_database%
ECHO USERNAME AND PASS: %user_database%  %pass_database%
ECHO DIR: %backup_dir%

SET /P conf=Would you confirm ?[Y/N] : 

if /I not %conf% == Y GOTO _start

SET name_file=config-%database%
if not exist %cd%\db-config mkdir %cd% db-config

cd db-config
type NUL > %name_file%.bat
echo  @ECHO OFF %NL% SET database=%database%%NL% SET ip_database=%ip_database%%NL% SET port_database=%port_database%%NL% SET user_database=%user_database%%NL% SET pass_database=%pass_database%%NL% SET backup_dir=%backup_dir%> %name_file%.bat
cd ..
CLS
ECHO SUCCESS !!

pause
CLS