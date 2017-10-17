*** Settings ***
Resource          ../share_resource.robot

*** Keywords ***
点击元素
    [Arguments]    ${locator}
    #点击元素    定位属性：id name
    Click Element    ${locator}

点击链接元素
    [Arguments]    ${locator}
    [Documentation]    Name:
    ...    Click Link
    ...    Source:
    ...    Selenium2Library <test library>
    ...
    ...    Arguments:
    ...    [ locator ]
    ...    Clicks a link identified by locator.
    ...
    ...    Key attributes for links are `id`, `name`, `href` and link text. See `introduction` for details about locating elements.
    #点击链接元素    #定位属性：id name href linktext
    Click Link    ${locator}

点击按钮
    [Arguments]    ${locator}
    [Documentation]    Name:
    ...    Click Button
    ...
    ...
    ...
    ...    Source:
    ...    Selenium2Library <test library>
    ...    Arguments:
    ...    [ locator ]
    ...
    ...
    ...
    ...    Clicks a button identified by `locator`.
    ...
    ...
    ...
    ...    Key attributes for buttons are `id`, `name` and `value`. See `introduction` for details about locating elements.
    #点击按钮    参数：id name
    Click Button    ${locator}

输入框输入内容
    [Arguments]    ${locator}    ${text}
    #输入框输入内容
    Input Text    ${locator}    ${text}

清除输入框内容
    [Arguments]    ${locator}
    #清除输入框内容
    Clear Element Text    ${locator}
