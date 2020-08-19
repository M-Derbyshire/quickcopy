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

IF /I "%1"=="/c" GOTO copyFile
IF /I "%1"=="--copy" GOTO copyFile

IF /I "%1"=="/m" GOTO moveFile
IF /I "%1"=="--move" GOTO moveFile

ECHO The given arguments are invalid. Please use --help to see the list of available options.
GOTO:eof

:displayChosenPath
CALL %~dp0/%srcDirName%/display_chosen_file_path.bat %chosenPathStoreFileName%
GOTO:eof

:displayHelp
CALL %~dp0/%srcDirName%/display_help.bat
GOTO:eof

:setChosenPath
REM Setting the chosen file like this, as it makes it easier to test it's empty
REM (was having issues testing if empty when there were quotes in the name).
SET chosenFileName=%2
IF DEFINED chosenFileName (
	CALL %~dp0/%srcDirName%/set_chosen_file_path.bat %chosenPathStoreFileName% %chosenFileName%
) ELSE (
	ECHO Please provide a filename
)
GOTO:eof

:clearChosenPath
CALL %~dp0/%srcDirName%/delete_chosen_file_path.bat %chosenPathStoreFileName%
GOTO:eof

:copyFile
SET newFileName=%2
IF DEFINED newFileName (
	CALL %~dp0/%srcDirName%/transfer_chosen_file.bat %chosenPathStoreFileName% %newFileName%
) ELSE (
	ECHO Please provide a name for the new file
)
GOTO:eof

:moveFile
SET newFileName=%2
IF DEFINED newFileName (
	CALL %~dp0/%srcDirName%/transfer_chosen_file.bat %chosenPathStoreFileName% %newFileName% move
	CALL %~dp0/%srcDirName%/delete_chosen_file_path.bat %chosenPathStoreFileName% silent
) ELSE (
	ECHO Please provide a name for the new file
)
GOTO:eof
