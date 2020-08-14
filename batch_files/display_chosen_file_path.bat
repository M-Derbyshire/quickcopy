@ECHO OFF

SET fileWithChosenPath=%~dp0chosen_file_path.txt
IF EXIST %fileWithChosenPath% (
	ECHO The chosen file path to copy/move is:
	TYPE %fileWithChosenPath%
) ELSE (
	ECHO No file has been chosen
) 
