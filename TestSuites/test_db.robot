*** Settings ***
Resource          ../Common/数据库操作.robot

*** Test Cases ***
test001
    连接Sqlite数据库    'LoginTest001'
    log    ${CURDIR}
