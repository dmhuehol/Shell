:: Script to automatically create a directory structure for CSU-CHILL X and S band radar data processing.
:: Written by: Daniel Hueholt
:: Undergraduate Research Assistant at Environment Analytics
:: October 2018

@ECHO OFF

:: This will be the folder name, a time in YYYYMMDD format
SET /p foldername="Enter the desired name for the top folder. This is usually the time the data was recorded in YYYYMMDD format. "

mkdir %foldername%

mkdir %foldername%\X
mkdir %foldername%\S
mkdir %foldername%\X\vault
mkdir %foldername%\S\vault

ECHO.Completed!

ECHO ON