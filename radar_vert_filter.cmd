:: Script to automatically create a directory structure and move radar images into the appropriate folders.
:: Written by: Daniel Hueholt
:: Undergraduate Research Assistant at Environment Analytics
:: October 2018

@ECHO OFF

:: Standard keys for CSU-CHILL

IF EXIST *.ang89.99* (
	mkdir vert
	move *.ang89.99* vert
) ELSE (
	set vert_presence=False
)

IF EXIST *.ang90.0* (
	mkdir vert
	move *.ang90.0* vert
) ELSE (
	set vert_presence=False
)



ECHO.Completed!
ECHO ON
