*** Settings ***
Documentation       This suite will handle all the test cases related to in valid
...     cradintial text.Test Case-TC_OH_2
Test Teardown       Close Browser
#Library     SeleniumLibrary
Resource    ../Resource/Base/CommonFunctionality.resource
*** Test Cases ***

TC_IVC
    launch Browser
    Input Text    id=txtUsername    konda
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Element Text Should Be    xpath=//span[@id="spanMessage"]    Invalid credentials
    Log To Console    done
    Sleep    5s
    Comment     Close Window done