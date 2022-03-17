*** Settings ***
Documentation       This suite will handle all the test cases related to in valid
...     cradintial text.Test Case-TC_OH_2
Test Setup      launch Browser
Test Teardown       Close Browser
Test Template       TC IVC Template
#Library     SeleniumLibrary
Resource    ../Resource/Base/CommonFunctionality.resource
*** Test Cases ***
TC1     raja        konda123        Invalid credentials
TC2     babu        konda587        Invalid credentials

*** Keywords ***
TC IVC Template
    [Arguments]     ${username}     ${password}     ${ERROR}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Button    id=btnLogin
    Element Text Should Be    xpath=//span[@id="spanMessage"]    ${ERROR}
