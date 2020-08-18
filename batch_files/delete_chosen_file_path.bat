SET chosenPathStoreFileName=%1
SET fileWithChosenPath=%~pd0%chosenPathStoreFileName%
IF EXIST %fileWithChosenPath% (
	DEL %fileWithChosenPath% 
	ECHO The chosen file has been cleared
) ELSE (
	ECHO No file selected
)
