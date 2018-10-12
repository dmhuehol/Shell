:: Creates folders for individual sweeps and move radar images into the appropriate directories
:: Written by Daniel Hueholt
:: Undergraduate Research Assistant at Environment Analytics
:: October 2018

@ECHO OFF

:: Prepare to count through the list of sweeps. User must input the start and end number of sweeps.
set /p start="Enter first sweep number: "
set /p end="Enter final sweep number: "

:: Make folders
FOR /L %%A IN (%start%,1,%end%) DO mkdir "Sweep %%A"

:: Move appropriate images to the new folders
FOR /L %%A IN (%start%,1,%end%) DO move *.%%A.* "Sweep %%A"

ECHO.Completed!

ECHO ON