*** Settings ***
Library           OpenXlxsLibrary

*** Variables ***
${excel_path}     F:\\MyDownloads\\data.xlsx

*** Keywords ***
读取数据
    [Arguments]    ${module_name}    ${case_name}
    Open Excel Xlxs    ${excel_path}
    ${case_names}    Get Column Values    ${module_name}    0
    ${case}    get_case_name_col    ${case_name}    ${case_names}
    log    ${case}
    ${par}    Read Cell Data By Coordinates    ${module_name}    ${case}    2
    log    ${par}
    ${useaname}    Set Variable    ${par}
    [Return]    ${useaname}

读取Excel数据
    [Arguments]    ${module_name}    ${test_case_name}
    #打开测试数据文件
    Open Excel Xlxs    ${excel_path}
    Get TestCase Parmerner    ${module_name}    ${test_case_name}
