*** Setting ***
Library           Selenium2Library

*** Variables ***
${HOST}           https://www.baidu.com

*** Test Cases ***
T_Case_1
    Log    Open Browser
    Open Browser    ${HOST}    browser=chrome    remote_url=http://127.0.0.1:4444/wd/hub
    Input Text    id=kw    Robot Framework
    Click Button    id=su
    sleep    10
    Capture Page Screenshot
    Sleep    5
