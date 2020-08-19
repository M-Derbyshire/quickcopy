REM Takes 2 arguments:
REM 1 - The name of the file to delete (not the full path)
REM 2 - If this script shouldn't display any messages, then this should equal "silent"

SET chosenPathStoreFileName=%1
SET fileWithChosenPath=%~pd0%chosenPathStoreFileName%
IF EXIST %fileWithChosenPath% (
	DEL %fileWithChosenPath% 
	IF /I NOT "%2"=="silent" ECHO The chosen file has been cleared
) ELSE (
	IF /I NOT "%2"=="silent" ECHO No file selected
)
