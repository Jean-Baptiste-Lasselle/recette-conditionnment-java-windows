REM test-setup1.bat

REM Env. setup
set WILDFLY_HOME_DIR=E:\IAAS\quoi\operations\wildfly-9.0.2.Final
set WILDFLY_RUNNING_NODE_DIR=E:\IAAS\quoi\operations\noeud-execution
set NOM_EXECUTABLE=girofle-cli.exe
del %NOM_EXECUTABLE%
PAUSE
COPY WinRun4J64c.exe %NOM_EXECUTABLE%
REM adding icon
RCEDIT64.exe /I %NOM_EXECUTABLE% Fibonacci.ico
REM adding splash
RCEDIT64.exe /S %NOM_EXECUTABLE% Fibonacci.jpg
PAUSE
REM adding jar resources
REM RCEDIT64.exe /J  %NOM_EXECUTABLE% E:\IAAS\quoi\operations\wildfly-9.0.2.Final\jboss-modules.jar
REM PAUSE
REM RCEDIT64.exe /M  %NOM_EXECUTABLE% META-INF/MANIFEST.MF
PAUSE