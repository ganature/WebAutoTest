*** Settings ***
Resource          ../TestCases/Core.robot
Resource          ../TestCases/登录测试用例.robot
Resource          ../Common/测试数据.robot
Resource          ../Common/登录模块数据读取.robot
Resource          ../Common/测试数据.robot
Resource          ../Common/数据库操作.robot
Resource          ../share_resource.robot
Resource          ../setting.robot
Library           OperatingSystem
Library           RequestsLibrary

*** Variables ***
${list}           None
${url}            http://bugfree:81/zentao/testtask-report-1-12-all-0-0.html
${alias}          bugfree

*** Test Cases ***
data
    initial_config
    @{data}    读取Exce2007数据    LoginTest
    : FOR    ${row}    IN    @{data}
    \    ${username}    Set Variable    ${row[0]}
    \    log    ${username}
    \    ${password}    Set Variable    ${row[1]}
    \    登录验证测试    ${username}    ${password}

test_path
    initial_config
    log    %{G_Project_Path}
    log    ${TEST NAME}
    Screenshot.Set Screenshot Directory    %{G_Screenshoot_Path}
    @{date}=    Get Time    year month day
    Take Screenshot    ${TEST NAME}_Screenshoot

test_reque
    Create Session    ${alias}    ${url}
    ${data}    Get Request    ${alias}    ${url}
    log    ${data.content}
