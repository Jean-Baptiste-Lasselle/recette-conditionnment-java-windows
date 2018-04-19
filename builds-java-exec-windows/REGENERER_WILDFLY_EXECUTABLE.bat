@echo off
REM test-setup1.bat

REM =====================================================
REM =====================================================
REM ============== Setting operations env. ==============
REM =====================================================
REM =====================================================
REM ==
REM set NOM_EXECUTABLE=girofle-cli.exe
set NOM_EXECUTABLE=girofle-cli.io
set RANDOM_STAMP=%time:~8%
REM set OPEERATIONS_HOME=E:\IAAS\temp_win_build
REM set OPEERATIONS_HOME=C:\moi\IAAS\the-devops-program\garage\______PRINCIPES_DEVOPS\DEPLOIEMENTS_JAVA\JAR_EXE\2
REM set OPEERATIONS_HOME=.\ops
set OPEERATIONS_HOME=C:\moi\IAAS\the-devops-program\garage\______PRINCIPES_DEVOPS\DEPLOIEMENTS_JAVA\JAR_EXE\2\ops
set OPEERATIONS_HOME_WINDOWS_DRIVE=%OPEERATIONS_HOME:~0,2%
set PREVIOUS=%cd%
set PREVIOUS_WINDOWS_DRIVE=%PREVIOUS:~0,2%
REM ==
REM =====================================================
REM PUSHING tools exe path to system Path
set "PATH=%PATH%;C:\Program Files\7-Zip"
set "PATH=%PATH%;C:\moi\mes.logiciels\sevenzip\v1604-x64\installation"

REM WinRun4J
REM set WHERE_TO_FIND_WIN_RUN_4J_DPENDENCY=E:\IAAS
set URL_DOWLOAD_WINRUN4J=https://netix.dl.sourceforge.net/project/winrun4j/winrun4j/0.4.5/winrun4J-0.4.5.zip
set WHERE_TO_FIND_WIN_RUN_4J_DPENDENCY=.
REM set WHERE_TO_FIND_IMAGES_DPENDENSEAS=E:\IAAS\quoi\operations\WinRun4J\1\test
set WHERE_TO_FIND_IMAGES_DPENDENSEAS=C:\moi\IAAS\the-devops-program\garage\______PRINCIPES_DEVOPS\DEPLOIEMENTS_JAVA\JAR_EXE\2
set WHERE_TO_FIND_INI_FILE_DPENDENSEE=C:\moi\IAAS\the-devops-program\garage\______PRINCIPES_DEVOPS\DEPLOIEMENTS_JAVA\JAR_EXE\2
set INI_FILE_DPENDENCY_FILENAME=girofle.ini
set WIN_RUN_4J_DPENDENCY_ARCHIVE_FILENAME=winrun4J-0.4.5.zip
REM ... le nom du répertoire généré par "Extraxt here" avec 7zip.exe ...
set WIN_RUN_4J_DPENDENCY_ARCHIVE_UNDERLYING_FOLDERNAME=winrun4j
set WIN_RUN_4J_DPENDENCY_ARCHIVE_FILENAME_NO_EXT=winrun4J-0.4.5
set WIN_RUN_4J_HOME=%OPEERATIONS_HOME%\WinRun4JHOME
set WIN_RUN_4J_DOT_NET_EXECUTABLE_RESOURCE_EDITOR_FILENAME=RCEDIT64.exe
set WIN_RUN_4J_DOT_NET_BASE_EXECUTABLE_FILENAME=WinRun4J64c.exe
REM set FUTURE_DOT_NET_EXECUTABLE_FILENAME=%NOM_EXECUTABLE%
set FUTURE_DOT_NET_EXECUTABLE_FILENAME=girofle-cli.io
REM poulette, ça marche aussi, mais je préfère les choses propres et standard, pour une distrib, en tout cas ;)
REM set FUTURE_DOT_NET_EXECUTABLE_FILENAME=
set WIN_RUN_4J_X86_64_JARS=*.jar
set WIN_RUN_4J_BIN_DIR=%WIN_RUN_4J_HOME%\%WIN_RUN_4J_DPENDENCY_ARCHIVE_UNDERLYING_FOLDERNAME%\bin


REM set WILDFLY_HOME_DIR=E:\IAAS\quoi\operations\wildfly-9.0.2.Final
REM set WILDFLY_RUNNING_NODE_DIR=E:\IAAS\quoi\operations\noeud-execution


REM building OPEERATIONS_HOME
if exist %OPEERATIONS_HOME% del /F /S /Q %OPEERATIONS_HOME%
mkdir %OPEERATIONS_HOME%
REM building WIN_RUN_4J_HOME
if exist %WIN_RUN_4J_HOME% del /F /S /Q %WIN_RUN_4J_HOME%
mkdir %WIN_RUN_4J_HOME%

REM =====================================================
REM =====================================================
REM ================= dezipper WinRun4J =================
REM =====================================================
REM =====================================================

7z.exe x %WHERE_TO_FIND_WIN_RUN_4J_DPENDENCY%\%WIN_RUN_4J_DPENDENCY_ARCHIVE_FILENAME% -o%WIN_RUN_4J_HOME%
echo "==================================================="
echo "============= POINT ARRET DEBUG ==================="
echo "==================================================="
echo " [OPEERATIONS_HOME=%OPEERATIONS_HOME%]"
echo " [OPEERATIONS_HOME_WINDOWS_DRIVE=%OPEERATIONS_HOME_WINDOWS_DRIVE%]"
echo " [WHERE_TO_FIND_WIN_RUN_4J_DPENDENCY=%WHERE_TO_FIND_WIN_RUN_4J_DPENDENCY%]"
echo " [WIN_RUN_4J_DPENDENCY_ARCHIVE_FILENAME=%WIN_RUN_4J_DPENDENCY_ARCHIVE_FILENAME%]"
echo " [WIN_RUN_4J_HOME=%WIN_RUN_4J_HOME%]"
echo "====== divers chemins de fichiers ======="
echo " [WIN_RUN_4J_BIN_DIR=%WIN_RUN_4J_BIN_DIR%]"
echo " [WinRun4J64c.exe=%WIN_RUN_4J_BIN_DIR%\%WIN_RUN_4J_DOT_NET_BASE_EXECUTABLE_FILENAME%]"
echo " [RCEDIT64.exe=%WIN_RUN_4J_BIN_DIR%\%WIN_RUN_4J_DOT_NET_EXECUTABLE_RESOURCE_EDITOR_FILENAME%]"
echo " [WIN_RUN_4J_BIN_DIR=%WIN_RUN_4J_BIN_DIR%]"
echo " [WIN_RUN_4J_BIN_DIR=%WIN_RUN_4J_BIN_DIR%]"
echo " [WIN_RUN_4J_BIN_DIR=%WIN_RUN_4J_BIN_DIR%]"
echo " [WIN_RUN_4J_BIN_DIR=%WIN_RUN_4J_BIN_DIR%]"

PAUSE


REM =====================================================
REM =====================================================
REM ================= PULLING DEPENDENCIES =================
REM =====================================================
REM =====================================================
REM pulling images dependencies [from?] to %OPEERATIONS_HOME%
COPY %WHERE_TO_FIND_IMAGES_DPENDENSEAS%\girofle.jpg %OPEERATIONS_HOME%
COPY %WHERE_TO_FIND_IMAGES_DPENDENSEAS%\girofle.ico %OPEERATIONS_HOME%

REM pulling RCEDIT64.exe  [from?] to  %OPEERATIONS_HOME%
COPY %WIN_RUN_4J_BIN_DIR%\%WIN_RUN_4J_DOT_NET_BASE_EXECUTABLE_FILENAME% %OPEERATIONS_HOME%
REM pulling WinRun4J64c.exe  [from?] to  %OPEERATIONS_HOME%
COPY %WIN_RUN_4J_BIN_DIR%\%WIN_RUN_4J_DOT_NET_EXECUTABLE_RESOURCE_EDITOR_FILENAME% %OPEERATIONS_HOME%
REM pulling WinRun4J's *.jars  [from?] to  %OPEERATIONS_HOME%
COPY %WIN_RUN_4J_BIN_DIR%\%WIN_RUN_4J_X86_64_JARS% %OPEERATIONS_HOME%
REM pulling INI file
COPY %WHERE_TO_FIND_INI_FILE_DPENDENSEE%\%INI_FILE_DPENDENCY_FILENAME%  %OPEERATIONS_HOME%



REM =====================================================
REM =====================================================
REM ================= utiliser WinRun4J =================
REM =====================================================
REM =====================================================
echo.=====================================================
echo.=====================================================
echo.================= utiliser WinRun4J =================
echo.=====================================================
echo.=====================================================



%OPEERATIONS_HOME_WINDOWS_DRIVE%
cd %OPEERATIONS_HOME%

if exist %FUTURE_DOT_NET_EXECUTABLE_FILENAME% del %FUTURE_DOT_NET_EXECUTABLE_FILENAME%
PAUSE
REM COPY WinRun4J64c.exe %NOM_EXECUTABLE%
COPY WinRun4J64c.exe %FUTURE_DOT_NET_EXECUTABLE_FILENAME%
REM COPY Fibonacci.poulet Fibonacci.
REM adding icon
RCEDIT64.exe /I %FUTURE_DOT_NET_EXECUTABLE_FILENAME% girofle.ico
REM adding splash screen
RCEDIT64.exe /S %FUTURE_DOT_NET_EXECUTABLE_FILENAME% girofle.jpg
REM sets the INI file
RCEDIT64.exe /N %FUTURE_DOT_NET_EXECUTABLE_FILENAME% %INI_FILE_DPENDENCY_FILENAME%
PAUSE
REM adding jar resources
REM RCEDIT64.exe /J  %NOM_EXECUTABLE% E:\IAAS\quoi\operations\wildfly-9.0.2.Final\jboss-modules.jar
REM PAUSE this shit wont ever work
REM RCEDIT64.exe /M  %NOM_EXECUTABLE% META-INF/MANIFEST.MF
echo.juste before jee showsup
PAUSE
REM and back to where you, system, were, wore, worn, wormn, born.
%PREVIOUS_WINDOWS_DRIVE%
cd %PREVIOUS%
call %OPEERATIONS_HOME%\%FUTURE_DOT_NET_EXECUTABLE_FILENAME%