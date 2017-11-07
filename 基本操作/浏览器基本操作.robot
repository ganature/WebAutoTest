*** Settings ***
Resource          ../share_resource.robot

*** Keywords ***
打开浏览器
    [Arguments]    ${url}    ${Browser}    # 网站地址|浏览器类型
    #打开浏览器    网站地址    浏览器类型
    Open Browser    url=${url}    browser=${Browser}

关闭当前浏览器
    #关闭当前浏览器
    Close Browser

关闭所有浏览器
    #关闭所有浏览器
    Close All Browsers

关闭当前窗口
    #关闭当前窗口
    Close Window

获取窗口标题
    #获取窗口标题
    Get Window Titles

浏览器后退
    #浏览器后退
    Go Back

打开网址
    [Arguments]    ${url}
    #打开网址
    Go To    ${url}

返回所有窗口的句柄
    #返回所有窗口的句柄
    List Windows

最大化窗口
    #最大化窗口
    Maximize Browser Window

刷新页面
    #刷新页面
    Reload Page

切换窗口
    [Arguments]    ${locator}
    [Documentation]    Strategy
    ...    Example
    ...    Description
    ...    title
    ...
    ...    Select Window `|` title=My Document
    ...    Matches by window title
    ...    name
    ...
    ...    Select Window `|` name
    ...    Matches by window javascript name
    ...    url
    ...
    ...    Select Window `|` url=http://google.com
    ...    Matches by window's current URL
    #切换窗口    #name title url window handle
    Select Window    locator=${locator}

获取元素的文本值
    [Arguments]    ${locator}
    Get Text    ${locator}

获取元素的属性值
    [Arguments]    ${locator}
    Get Value       ${locator}
