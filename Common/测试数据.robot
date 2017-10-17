*** Settings ***
Library           OpenXlxsLibrary/OpenXlxsLibrary.py
Library           ExcelLibrary
Resource          ../share_resource.robot

*** Variables ***
${excel_path}     F:\\MyDownloads\\data.xlsx

*** Keywords ***
读取数据
    Open Excel    ${excel_path}
    @{case_names}    Get Column Values    ${module_name}    0
    : FOR    ${i}    IN    @{case_names}
    \    log    ${i[1]}

读取Excel数据
    [Arguments]    ${module_name}    ${test_case_name}
    #打开测试数据文件
    Open Excel Xlxs    ${excel_path}
    @{data}    Get TestCase Parmerner    ${module_name}    ${test_case_name}
    log    @{data}[0]
