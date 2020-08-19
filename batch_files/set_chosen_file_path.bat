REM Takes 2 arguments:
REM 1 - the name of the file that will contain the chosen file path string
REM 2 - the name of the chosen file to be copied/moved

SET chosenPathStoreFileName=%1

REM If there are quotes around the filename, remove them
SET passedInChosenFileString=%2
SET chosenFileName=%passedInChosenFileString:"=%
SET chosenFullPath=%cd%\%chosenFileName%

REM Add quotes to the full path when saving, in case there's spaces
ECHO ^"%chosenFullPath%^" > %~dp0/%chosenPathStoreFileName%
ECHO File to copy/move is now "%chosenFullPath%"
