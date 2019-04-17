@ECHO OFF

cls
SET start_dir=%cd%
for /R db-config  %%f in  (*.bat) do (
    pushd %start_dir%
    %%f
    %cd%\exec\exec.bat
  )  

