*** Settings ***
Library           OperatingSystem
Library           Common/ConfigLibrary/ConfigLibrary.py

*** Keywords ***
initial_config
    Set Environment Variable    Gis_Url    http://120.77.216.30/ptt/a/login
    Set Environment Variable    Browser    Chrome
    #Project Setting
    Set Environment Variable    G_Project_Path    ${CURDIR}
    Set Environment Variable    G_Screenshoot_Path    %{G_Project_Path}\\TestSuites\\Screenshoot
    #Data Config
