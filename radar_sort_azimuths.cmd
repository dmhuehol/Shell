:: Creates folders for individual azimuths and move radar images into the appropriate directories
:: Written by Daniel Hueholt
:: Undergraduate Research Assistant at Environment Analytics
:: February 2020

@ECHO OFF

:: Prepare to count through the list of sweeps. User must input the start and end number of sweeps.
set /p azimuths="Enter azimuth numbers as comma separated list: "

:: Make folders
FOR /F %%A IN ("%azimuths:,=" "%") DO mkdir "azi%%A"

:: Move appropriate images to the new folders
FOR /F %%A IN ("%azimuths:,=" "%") DO move *.%%A.* "azi%%A"

ECHO.Completed!

ECHO ON
