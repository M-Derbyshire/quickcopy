@ECHO OFF
REM Route the request to the correct batch file in ./batch_files

IF "%1"=="" GOTO displayHelp


IF /I "%1%"=="-h" GOTO displayHelp 
IF /I "%1%"=="--help" GOTO displayHelp
IF /I "%1%"=="/?" GOTO displayHelp



GOTO:eof

:displayHelp
CALL %~dp0/batch_files/display_help.bat
GOTO:eof
