@ECHO OFF
REM Route the request to the correct batch file in ./batch_files

SET srcDirName=batch_files
SET chosenPathStoreFileName=chosen_file_path.txt

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
CALL %~dp0/%srcDirName%/display_chosen_file_path.bat %chosenPathStoreFileName%
GOTO:eof

:displayHelp
CALL %~dp0/%srcDirName%/display_help.bat
GOTO:eof

:setChosenPath
IF NOT "%2"=="" (
	CALL %~dp0/%srcDirName%/set_chosen_file_path.bat %chosenPathStoreFileName% %2
) ELSE (
	ECHO Please provide a filename
)
GOTO:eof

:clearChosenPath
CALL %~dp0/%srcDirName%/delete_chosen_file_path.bat %chosenPathStoreFileName%
GOTO:eof
