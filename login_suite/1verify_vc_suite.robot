*** Settings ***
Documentation       This suite will handle all the test cases related to valid
...     cradintial text.Test Case-TC_OH_2
Test Teardown       Close Browser
Library     SeleniumLibrary

*** Test Cases ***

TC_VVCT
    Open Browser        browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://opensource-demo.orangehrmlive.com/
    Maximize Browser Window
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Page Should Contain    My Info
    Click Element    id=menu_pim_viewMyDetails
    Click Element    id=welcome
    Click Element       link=Logout
    Sleep    5s
    Comment     Close Window done

