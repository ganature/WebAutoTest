*** Settings ***
Resource          ../TestCases/Core.robot
Resource          ../TestCases/登录测试用例.robot
Resource          ../Common/测试数据.robot
Resource          ../Common/登录模块数据读取.robot
Resource          ../Common/测试数据.robot
Resource          ../Common/数据库操作.robot
Resource          ../share_resource.robot

*** Variables ***
${list}           None

*** Test Cases ***
login001
    @{test_case}    LoginTest读取数据    LoginTest001
    log    ${test_case}
    ${username}    set variable    ${test_case[0]}
    log    ${username}

get data
    ${useraname}=    读取数据    LoginTest    LoginTest001
    log    ${useraname}

login002
    ${a}    LoginTest读取数据    LoginTest001

login003
    ${username}    连接数据库    LoginTest001
    log    ${username}

data
    [Setup]    Common_setUp
    @{data}    读取Excel数据    LoginTest    LoginTest001
    ${username}    Set Variable    @{data}[0]
    log    ${username}
    ${password}    Set Variable    @{data}[1]
    log    ${password}
    登录验证测试    ${username}    ${password}
    [Teardown]    Common_tearDown
