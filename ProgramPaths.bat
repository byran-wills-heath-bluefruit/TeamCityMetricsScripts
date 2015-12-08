@echo off

IF DEFINED ProgramFiles(x86) GOTO :64Bit

SET PROGRAM_FILES_32BIT=%ProgramFiles%
SET PROGRAM_FILES_64BIT=%ProgramFiles%
GOTO :ProgramFilesSet

:64Bit
SET PROGRAM_FILES_32BIT=%ProgramFiles(x86)%
SET PROGRAM_FILES_64BIT=%ProgramFiles%

:ProgramFilesSet

set SOURCEMONITOR="%PROGRAM_FILES_32BIT%\SourceMonitor\SourceMonitor.exe"
set VSTEST_2013="%PROGRAM_FILES_32BIT%\Microsoft Visual Studio 12.0\Common7\IDE\CommonExtensions\Microsoft\TestWindow\vstest.console.exe"
set DEVENV_2013="%PROGRAM_FILES_32BIT%\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe"
set OPENCOVER="%PROGRAM_FILES_32BIT%\OpenCover\OpenCover.Console.exe"
set SEVENZIP="%PROGRAM_FILES_64BIT%\7-Zip\7z.exe"
set CPPCHECK="%PROGRAM_FILES_64BIT%\CppCheck\CppCheck.exe"
