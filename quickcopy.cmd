@ECHO OFF
REM Route the request to the correct batch file in ./batch_files

IF "%1"=="" GOTO displayChosenPath


IF /I "%1"=="/h" GOTO displayHelp 
IF /I "%1"=="--help" GOTO displayHelp
IF /I "%1"=="/?" GOTO displayHelp

IF /I "%1"=="/s" GOTO setChosenPath
IF /I "%1"=="--set" GOTO setChosenPath

IF /I "%1"=="/e" GOTO clearChosenPath
IF /I "%1"=="--empty" GOTO clearChosenPath

GOTO:eof

:displayChosenPath
CALL %~dp0/batch_files/display_chosen_file_path.bat
GOTO:eof

:displayHelp
CALL %~dp0/batch_files/display_help.bat
GOTO:eof

:setChosenPath
IF NOT "%2"=="" CALL %~dp0/batch_files/set_chosen_file_path.bat %2
GOTO:eof

:clearChosenPath
CALL %~dp0/batch_files/delete_chosen_file_path.bat
GOTO:eof
