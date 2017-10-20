*** Settings ***
Resource          ../PageObject/Core/LoginPage.robot
Resource          ../setting.robot

*** Variables ***
${Gis_Url}        %{Gis_Url}    # Gis地址
${Browser}        %{Browser}    # 浏览器类型

*** Keywords ***
登录验证测试
    [Arguments]    ${username}    ${password}    ${expectation}=None
    [Documentation]    登录流程：
    ...    \ \ \ \ \ \ \ \ \ \ 1、输入用户名
    ...    \ \ \ \ \ \ \ \ \ 2、输入密码
    ...    \ \ \ \ \ \ \ \ 3、点击登录按钮
    initial_config
    打开浏览器    %{Gis_Url}    %{Browser}
    输入用户名    ${username}
    输入密码    ${password}
    点击登录
    延迟等待    5
    关闭当前浏览器
