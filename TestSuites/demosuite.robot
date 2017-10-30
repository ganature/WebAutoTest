*** Setting ***
Library    Selenium2Library

*** Variables ***
${HOST}    https://www.baidu.com

*** Test Cases ***
T_Case_1
    Log    Open Browser
    Open Browser    ${HOST}    firefox    remote_url=http://0.0.0.0:4444/wd/hub
    Input Text    id=kw    Robot Framework
    Click Button    id=su
    Capture Page Screenshot
    Sleep    5


