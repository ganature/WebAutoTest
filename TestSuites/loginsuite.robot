*** Settings ***
Resource          ../TestCases/Core.robot
Resource          ../TestCases/登录测试用例.robot
Resource          ../Common/测试数据.robot
Resource          ../Common/登录模块数据读取.robot
Resource          ../Common/测试数据.robot
Resource          ../Common/数据库操作.robot
Resource          ../share_resource.robot
Resource          ../setting.robot

*** Variables ***
${list}           None

*** Test Cases ***
data
    @{data}    读取Excel数据    LoginTest
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
