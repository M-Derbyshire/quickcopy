REM Takes 2 arguments:
REM 1 - the name of the file that will contain the chosen file path string
REM 2 - the name of the chosen file to be copied/moved

SET chosenPathStoreFileName=%1
SET fullPath=%cd%\%2
ECHO %fullPath% > %~dp0/%chosenPathStoreFileName%
ECHO File to copy/move is now %fullPath%
