*** Settings ***
Documentation       This suite will handle all the test cases related to valid
...     cradintial text.Test Case-TC_OH_2
Test Setup      launch Browser
Test Teardown       Close Browser
#Library     SeleniumLibrary
Resource    ../Resource/Base/CommonFunctionality.resource

*** Test Cases ***

TC_VC
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Page Should Contain    My Info
    Click Element    id=menu_pim_viewMyDetails
    Click Element    id=welcome
    Click Element       link=Logout


