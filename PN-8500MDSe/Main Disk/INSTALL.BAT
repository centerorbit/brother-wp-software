echo off
cls
echo ----------------------------------------------------------------------
cd \
if exist wx.ovr goto okay
echo CONVERSION SOFTWARE INSTALLATION INSTRUCTIONS:                       -
echo ---------------------------------------------                        -
echo                                                                      -
echo Insert the installation floppy disk into a disk drive (say, A:)      -
echo Make that drive the default (e.g., type A: and press ENTER key)      -
echo                                                                      -
echo Then, type INSTALL and press the ENTER key (to install on drive C:)  -
echo To install on some other drive (e.g., D:), type INSTALL D: and ENTER -
echo ----------------------------------------------------------------------
goto finish
:okay
if "%1"=="" goto default
echo Installing Brother Conversion Software on drive %1 ...
echo Creating Brother Directory ...
md %1\brother >nul
cd %1\brother >nul
echo Copying required files. Please wait ...
copy brother.0* %1*.* >nul
copy convert.exe %1*.* >nul
copy wx*.* %1*.* >nul
echo CD BROTHER >%1\convert.bat
echo CONVERT >>%1\convert.bat
echo CD \ >>%1\convert.bat
%1
goto installed
:default
echo Installing Brother Conversion Software on drive C: ...
echo Creating Brother Directory ...
md C:\brother >nul
cd C:\brother >nul
echo Copying required files. Please wait ...
copy brother.0* C:*.* >nul
copy convert.exe C:*.* >nul
copy wx*.* C:*.* >nul
echo CD BROTHER >c:\convert.bat
echo CONVERT >>c:\convert.bat
echo CD \ >>c:\convert.bat
C:
:installed
echo ----------------------------------------------------------------------
echo Brother Conversion Software successfully installed.
echo To convert files, type CONVERT and press the ENTER key.
:finish
echo on
