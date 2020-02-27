:: Creates folders for individual azimuths given as a space-separated list and
::  moves radar images into the appropriate directories
:: Written by Daniel Hueholt
:: Undergraduate Research Assistant at Environment Analytics
:: February 2020

@ECHO OFF

:: Request the list of azimuths
:: e.g. for a folder with azimuths 141, 168, 299, user would input 141 168 299
set /p azimuths="Enter azimuth numbers as space-separated list: "

:: Make folders
FOR %%A IN (%azimuths%) DO mkdir "azi%%A"

:: Move appropriate images to the new folders
FOR %%A IN (%azimuths%) DO move *.azi%%A.* "azi%%A"

ECHO.Completed!

ECHO ON
