*** Settings ***
Library           ExcelLibrary
Resource          ../share_resource.robot
Library           OpenXlxsLibrary/OpenXlxsLibrary.py

*** Variables ***
${excel_path}     F:\\MyDownloads\\data.xlsx

*** Keywords ***
读取Excel2003数据
    [Documentation]    Read or write Excel2003-2007
    Open Excel    ${excel_path}
    @{case_names}    Get Column Values    ${module_name}    0
    : FOR    ${i}    IN    @{case_names}
    \    log    ${i[1]}

读取Exce2007数据
    [Arguments]    ${module_name}
    [Documentation]    support Excel 2007 or later
    #打开测试数据文件
    Open Excel Xlxs    ${excel_path}
    @{data}    get_cols_vaules    ${module_name}
    [Return]    @{data}
