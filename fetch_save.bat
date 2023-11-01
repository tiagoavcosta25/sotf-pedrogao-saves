@echo off

set sourceFolder=%localappdata%low\Endnight\SonsOfTheForestDS
set destinationFolder=%cd%\SonsOfTheForestDS

robocopy "%sourceFolder%" "%destinationFolder%" /E /MIR