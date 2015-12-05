@echo off

cd "%~dp0"
..\xslconvert "CodeCoverage.xml" CoverageToTeamCity.xslt Coverage.txt

type Coverage.txt
