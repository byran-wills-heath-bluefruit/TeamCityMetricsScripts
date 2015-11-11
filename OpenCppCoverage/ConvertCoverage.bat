@echo off

set CURRENT_DIRECTORY="%~dp0"
set SOURCES=%1

set APP=
:passing_parameters
if "%2"=="" goto calculate_coverage
set APP=%APP% %2
shift
goto passing_parameters


:calculate_coverage
cd "%CURRENT_DIRECTORY%"
del Coverage.xml
opencppcoverage --sources %SOURCES% --export_type=cobertura:Coverage.xml -- %APP%

cd "%CURRENT_DIRECTORY%"
..\xslconvert "Coverage.xml" CoverageToTeamCity.xslt Coverage.txt

type Coverage.txt
