*** Settings ***
Library           OperatingSystem
Library           Common/ConfigLibrary/ConfigLibrary.py

*** Keywords ***
initial_config
    Set Environment Variable    Gis_Url    http://112.74.185.137/login.html
    Set Environment Variable    Browser    Chrome
    #Project Setting
    Set Environment Variable    G_Project_Path    ${CURDIR}
    Set Environment Variable    G_Screenshoot_Path    %{G_Project_Path}\\TestSuites\\Screenshoot
    #Data Config
    Set Environment Variable    G_Excel_Path
