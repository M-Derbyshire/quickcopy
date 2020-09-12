REM Takes 3 arguments:
REM 1 - The name of the file that contains the path of the file to be copied.
REM 2 - The name that the copy will be saved as
REM 3 - If the file should be moved, rather than copied, this should equal "move"

SET fileWithChosenPath=%~dp0%1
SET newFilePath=%cd%\%2
IF EXIST %fileWithChosenPath% (
	FOR /F "delims=" %%a IN (%fileWithChosenPath%) DO (
		IF EXIST %%a (
			IF /I "%3"=="move" (
				MOVE %%a "%newFilePath%"	
			) ELSE (
				COPY %%a "%newFilePath%"
			)
		) ELSE (
			REM This is more informative than the default copy error
			ECHO The set file does not exist
		)
	)
) ELSE (
	ECHO No file has been chosen
)
