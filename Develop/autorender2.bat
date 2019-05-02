@echo off
%~d0
cd %~d0%~p0


echo ************************
echo ** autorender run ..  **
echo USEAGE :
echo >>> autorender.bat your_project.aep
echo ************************

REM set AF_RENDER_EXE="C:\Program Files\Adobe\Adobe After Effects CC 2015.3\Support Files\aerender.exe"
set AF_RENDER_EXE="C:\Program Files\Adobe\Adobe After Effects CC 2017\Support Files\aerender.exe"
set CUR_DIR=%~d0%~p0
rem set AEP=id142_ver1.1.aep
set AEP=%1
set TARGET_PATH=%CUR_DIR%%AEP%

rem ** INFOMATION **
echo [ AF_RENDER_EXE ] 
echo %AF_RENDER_EXE%
echo;
echo [ target.aep ] 
echo %AEP%
echo;
echo [ current dir ] 
echo %CUR_DIR%
echo;
echo [ target.aep full path ] 
echo %TARGET_PATH%
echo;

rem ** RENDERING **
%AF_RENDER_EXE% -project %TARGET_PATH%
