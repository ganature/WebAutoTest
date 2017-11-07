*** Settings ***
Documentation     *主页元素操作*
...
Resource          ../../基本操作/Baseoperator.robot

*** Keywords ***
安全退出
    #点击三级管理
    点击元素  xpath=//*[@id="side-menu"]/li[1]/div
    #点击安全退出
    点击链接元素  /ptt/a/logout

获取当前登录用户名
    ${username}    Get Text    xpath=//*[@id="side-menu"]/li[1]/div/a/span/span[1]/strong
    [Return]    ${username}

点击首页
    点击链接元素    /ptt/a/index

点击用户列表
    点击元素    xpath=//*[@id="side-menu"]/li[3]/a/span[1]
    等待至元素可见    xpath=//*[@id="side-menu"]/li[3]/ul/li[2]/a/span
    点击元素    xpath=//*[@id="side-menu"]/li[3]/ul/li[2]/a/span
