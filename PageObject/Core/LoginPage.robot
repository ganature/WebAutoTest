*** Settings ***
Documentation     定义了登录页面的用户名、密码、和登录按钮的元素定位的“locator”
Resource          ../../基本操作/BaseOperator.robot
Resource          ../../基本操作/定位元素操作.robot

*** Variables ***
&{LoginVariable}    name_id=username    password_id=password    login_id=

*** Keywords ***
输入密码
    [Arguments]    ${password}
    #输入密码    定位密码输入框    密码
    清除输入框内容   &{LoginVariable}[password_id]
    输入框输入内容    &{LoginVariable}[password_id]   ${password}

输入用户名
    [Arguments]    ${username}
    清除输入框内容    &{LoginVariable}[name_id]
    输入框输入内容    &{LoginVariable}[name_id]    ${username}

点击登录
    #点击登录
    点击元素    tag=button

获取登录页面的标题
    #获取登录页面的标题
    Get Title

延迟等待
    [Arguments]    ${second}
    #等待固定时间
    延迟等待   ${second}
