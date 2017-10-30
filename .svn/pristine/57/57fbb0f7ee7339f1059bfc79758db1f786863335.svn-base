*** Settings ***
Resource          ../share_resource.robot

*** Keywords ***
等待固定时长
    [Arguments]    ${second}
    #延迟等待
    Sleep    ${second}

等待至元素可见
    [Arguments]    ${locator}
    #等待至元素可见
    Wait Until Element isVisible    ${locator}
