SET fileWithChosenPath=%~dp0chosen_file_path.txt
IF EXIST %fileWithChosenPath% (
	FOR /F %%a IN (%fileWithChosenPath%) DO (
		ECHO The chosen file path to copy/move is: %%a
	)
) ELSE (
	ECHO No file has been chosen
) 
