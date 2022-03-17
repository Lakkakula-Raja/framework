*** Settings ***
Documentation       This suite will handle all the test cases related to in valid
...     cradintial text.Test Case-TC_OH_2
Resource    ../Resource/Base/CommonFunctionality.resource
Library     DataDriver      file=../test_data/orange_data.xlsx      sheet_name=EmergencyData
Test Setup      launch Browser
Test Teardown       Close Browser
Test Template       TC Emergency Template

*** Test Cases ***
TC1
#Admin   admin123    Ram    Brother     8919210210
#TC1     Admin   admin123    Raja    Caption     89194840840
#TC1     Admin   admin123    Rao    Brother     8919420420

*** Keywords ***
TC Emergency Template
    [Arguments]     ${UNAME}     ${PASSWORD}     ${ENAME}      ${RELATION}      ${PHONE}
    Input Text    id=txtUsername    ${UNAME}
    Input Password    id=txtPassword    ${PASSWORD}
    Click Button    id=btnLogin
    Click Element    id=menu_pim_viewMyDetails
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    ${ENAME}
    Input Text    id=emgcontacts_relationship    ${RELATION}
    Input Text    id=emgcontacts_homePhone    ${PHONE}
    Click Button    id=btnSaveEContact
    Table Should Contain    id=emgcontact_list    ${ENAME}
    Table Should Contain    id=emgcontact_list    ${RELATION}
    Table Should Contain    id=emgcontact_list    ${PHONE}