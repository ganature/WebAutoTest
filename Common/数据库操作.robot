*** Settings ***
Library           DatabaseLibrary

*** Keywords ***
连接数据库
    [Arguments]    ${case_name}
    Connect To Database    sqlite3    F:\\MyDownloads\\test.db
    ${resulte}    Query    Select username from tes_parm where case_name=${case_name}
    [Return]    ${resulte}
