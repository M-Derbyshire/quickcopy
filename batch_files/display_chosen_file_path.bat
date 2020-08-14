@ECHO OFF

IF EXIST "%~dp0chosen_file_path.txt" (
	ECHO The chosen file path to copy/move is:
	TYPE %~dp0chosen_file_path.txt
) ELSE (
	ECHO No file has been chosen
) 
