@ECHO OFF
echo %backup_dir%
pushd %backup_dir%
if not exist %database% mkdir %database%
cd %database%
if not exist %date:~6,4% mkdir %date:~6,4%
cd %date:~6,4%
if not exist %date:~3,2% mkdir %date:~3,2%
cd %date:~3,2%
if not exist %date:~0,2% mkdir %date:~0,2%
cd %date:~0,2%

SET file_dir=%backup_dir%\%database%\%date:~6,4%\%date:~3,2%\%date:~0,2%
ECHO %file_dir%