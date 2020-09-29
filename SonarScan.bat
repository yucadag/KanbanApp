@echo off

ECHO Sonarqube Scanner Start
ECHO ======================================

dotnet sonarscanner begin /k:"KanbanApp"

dotnet build C:\TFSProjects\KanbanApp

dotnet sonarscanner end


ECHO Sonarqube Scanner End;

:END