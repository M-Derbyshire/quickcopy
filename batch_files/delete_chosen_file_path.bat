SET fileWithChosenPath=%~pd0chosen_file_path.txt
IF EXIST %fileWithChosenPath% (
	DEL %fileWithChosenPath% 
	ECHO The chosen file has been cleared
) ELSE (
	ECHO No file selected
)
