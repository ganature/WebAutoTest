*** Settings ***
Resource          ../PageObject/Core/LoginPage.robot

*** Keywords ***
登录验证测试
    [Arguments]    ${username}    ${password}    ${expectation}=None
    [Documentation]    登录流程：
    ...     \ \ \ \ \ \ \ \ \ \ 1、输入用户名
    ...     \ \ \ \ \ \ \ \ \ 2、输入密码
    ...     \ \ \ \ \ \ \ \ 3、点击登录按钮
    输入用户名    ${username}
    输入密码    ${password}
    点击登录
    延迟等待    5
