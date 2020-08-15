SET fullPath=%cd%\%1
ECHO %fullPath% > %~dp0/chosen_file_path.txt
ECHO File to copy/move is now %fullPath%
