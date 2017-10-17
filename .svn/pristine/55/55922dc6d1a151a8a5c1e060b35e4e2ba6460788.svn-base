*** Settings ***
Resource          ../基本操作/浏览器基本操作.robot

*** Keywords ***
Common_setUp
    #获取环境配置文件信息
    Set Environment Variable    url    http://112.74.185.137/login.html
    Set Environment Variable    browser    Chrome
    #打开浏览器
    打开浏览器    %{url}    %{browser}

Common_tearDown
    #关闭浏览器
    关闭所有浏览器
