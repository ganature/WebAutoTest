*** Settings ***
Resource          测试数据.robot

*** Variables ***
${module_name}    LoginTest

*** Keywords ***
LoginTest读取数据
    [Arguments]    ${test_case_name}
    [Tags]    登录模块测试
    读取Exce2007数据    ${module_name}    ${test_case_name}
