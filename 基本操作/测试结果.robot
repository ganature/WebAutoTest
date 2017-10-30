*** Settings ***
Resource          ../share_resource.robot

*** Keywords ***
检查标题
    [Arguments]    ${title}
    #检查标题
    Title Should Be    ${title}

检查元素是否存在
    [Arguments]    ${locator}
    #检查元素是否存在
    Element Should Be Visible    ${locator}

检查Alert窗口内容
    [Arguments]    ${text}
    #检查Alert窗口内容
    Alert Should Be Present    text=${text}

检查元素文本
    [Arguments]    ${locator}    ${message}
    #检查元素文本
    Element Text Should Be    locator=${locator}    message=${message}
    