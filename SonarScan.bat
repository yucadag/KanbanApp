@echo off

ECHO Sonarqube Scanner Start
ECHO ======================================

 dotnet sonarscanner begin /k:"KanbanApp" /d:sonar.host.url="http://localhost:9000" /d:sonar.login="51114c3a0d24a54abbb00c62a2ca67e8aa3f1045"

 dotnet build C:\TFSProjects\KanbanApp

 dotnet sonarscanner end /d:sonar.login="51114c3a0d24a54abbb00c62a2ca67e8aa3f1045"

REM SonarScanner.MSBuild.exe begin /k:"KanbanApp" /d:sonar.host.url="http://localhost:9000" /d:sonar.login="51114c3a0d24a54abbb00c62a2ca67e8aa3f1045"


REM MsBuild.exe /t:Rebuild


REM SonarScanner.MSBuild.exe end /d:sonar.login="51114c3a0d24a54abbb00c62a2ca67e8aa3f1045"

ECHO Sonarqube Scanner End;

:END


