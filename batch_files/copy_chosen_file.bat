REM Takes 2 arguments:
REM 1 - The name of the file that contains the path of the file to be copied.
REM 2 - The name that the copy will be saved as

SET fileWithChosenPath=%~dp0%1
SET newFilePath=%cd%\%2
IF EXIST %fileWithChosenPath% (
	FOR /F %%a IN (%fileWithChosenPath%) DO (
		COPY %%a %newFilePath% 
	)
) ELSE (
	ECHO No file has been chosen
)
