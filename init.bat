@ECHO OFF
SET start_dir=%cd%
for /R db-config  %%f in  (*.bat) do (
    pushd %start_dir%
    %%f
    call %cd%\exec\exec.bat
  )  
