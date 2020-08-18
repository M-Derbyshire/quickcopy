SET chosenPathStoreFileName=%1
SET fullPath=%cd%\%2
ECHO %fullPath% > %~dp0/%chosenPathStoreFileName%
ECHO File to copy/move is now %fullPath%
