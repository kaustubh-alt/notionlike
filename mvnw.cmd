@ECHO OFF
SETLOCAL
set DIR=%~dp0
set WRAPPER_JAR=%DIR%\.mvn\wrapper\maven-wrapper.jar
set WRAPPER_LAUNCHER=org.apache.maven.wrapper.MavenWrapperMain

if not exist "%WRAPPER_JAR%" (
  echo Maven Wrapper JAR not found at %WRAPPER_JAR%.
  echo Please ensure it is downloaded to run the wrapper.
  exit /b 1
)

set JAVA_EXE=java
"%JAVA_EXE%" -cp "%WRAPPER_JAR%" %WRAPPER_LAUNCHER% %*
ENDLOCAL
