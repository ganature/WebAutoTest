*** Settings ***
Resource          ../../基本操作/Baseoperator.robot

*** Keywords ***
使用账单
    [Documentation]    *选择账单*
    SelectByIndex    1

输入账号
    [Arguments]    ${account}
    清除输入框内容    account
    输入框输入内容    account    ${account}

输入名字
    [Arguments]    ${name}
    #清除已输入名字    id
    清除输入框内容    name
    #输入名字    id    名字
    输入名字    name    ${name}

输入密码
    [Arguments]    ${password}=111111
    #清除默认密码    id
    清除输入框内容    password
    #输入密码    id    密码
    输入框输入内容    password    ${password}

勾选会话权限项
    #勾选会话权限    id
    勾选单选框    funcsList1

勾选切组权限项
    #勾选切组权限项    id
    勾选单选框    funcsList2

勾选单呼权限项
    #勾选单呼权限项    id
    勾选单选框  funcsList3

勾选长呼权限项
    #勾选长呼权限项    id
    勾选单选框  funcsList4

勾选跨组单呼权限项
    #勾选跨组单呼权限项    id
    勾选单选框  funcsList5

输入IMEI
    [Arguments]  ${IMEI}
    #清除已输入的IMEI     id
    清除输入框内容     imei
    #输入IMEI
    输入框输入内容  imei   ${IMEI}gpsInterval

GPS周期
    [Arguments]  $(GPS_Perid)=5
    清除输入框内容  gpsInterval
    输入框输入内容  gpsInterval    $(GPS_Perid)
