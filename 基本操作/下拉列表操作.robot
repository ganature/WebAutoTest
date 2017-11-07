*** Settings ***
Library           Selenium2Library

*** Keywords ***
SelectByIndex
    [Arguments]    ${index}
    Select From List By Index    id=billid    ${index}
