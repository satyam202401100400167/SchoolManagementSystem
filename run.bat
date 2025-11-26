@echo off
echo ========================================
echo School Management System
echo ========================================
echo.

REM Set JAVA_HOME
set "JAVA_HOME=C:\Program Files\Java\jdk-24"

REM Set local Maven
set "MAVEN_HOME=%~dp0maven\apache-maven-3.9.5"
set "PATH=%MAVEN_HOME%\bin;%PATH%"

echo Using Java: %JAVA_HOME%
echo Using Maven: %MAVEN_HOME%
echo.
echo Starting server...
echo.
echo ========================================
echo KEEP THIS WINDOW OPEN!
echo Server will run here.
echo Access: http://localhost:8081
echo Press Ctrl+C to stop.
echo ========================================
echo.

REM Run Maven
"%MAVEN_HOME%\bin\mvn.cmd" jetty:run

echo.
echo Server stopped.
pause
