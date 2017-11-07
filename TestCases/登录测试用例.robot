*** Settings ***
Resource          ../PageObject/Core/LoginPage.robot
Resource          ../setting.robot
Resource          ../基本操作/测试结果.robot

*** Variables ***

*** Keywords ***
登录验证测试
    [Arguments]    ${username}    ${password}    ${expectation}=None
    [Documentation]    登录流程：
    ...    \ \ \ \ \ \ \ \ \ \ 1、输入用户名
    ...    \ \ \ \ \ \ \ \ \ 2、输入密码
    ...    \ \ \ \ \ \ \ \ 3、点击登录按钮
    输入用户名    ${username}
    输入密码    ${password}
    点击登录
    延迟等待    5
    检查标题    公共对讲系统管理云平台
