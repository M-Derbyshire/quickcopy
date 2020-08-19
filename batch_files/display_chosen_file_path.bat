REM Takes 1 argument: the name of the file that contains the chosen file path

SET chosenPathStoreFileName=%1
SET fileWithChosenPath=%~dp0%chosenPathStoreFileName%
IF EXIST %fileWithChosenPath% (
	FOR /F "delims=" %%a IN (%fileWithChosenPath%) DO (
		ECHO The chosen file path to copy/move is: %%a
	)
) ELSE (
	ECHO No file has been chosen
) 
