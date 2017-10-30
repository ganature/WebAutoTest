*** Settings ***
Library           DatabaseLibrary
Library           MongoDBLibrary

*** Variables ***
${Sqlite_path}    'F:/MyDownloads/test.db'    # Sqlite数据库文件路径

*** Keywords ***
连接Sqlite数据库
    [Arguments]    ${case_name}
    Connect To Database Using Custom Params    sqlite3    'F:/MyDownloads/test.db'    #Comment 连接数据库
    ${resulte}    Query    Select username from tes_parm where case_name=${case_name}    #查询数据
    [Return]    ${resulte}

连接MongoDB数据库
    #连接Mongo
    Connect To Mongodb
