*** Comments ***
Create testcase then connet with template & excel
1. Enter username
2. Enter password
3. click login
4. click my info
5. click Memberships
6. Select Membership as TOP
7.Select Payment of the subscription in charge of as Business
8. Subscription cost as 500
9. Coin as Rupiah India
10. table contains added record
*** Settings ***
Documentation   this will check the membership details
Test Setup      launch Browser
Test Teardown       Close Browser
Test Template       Mempership Template
#Library     SeleniumLibrary membership
Resource    ../Resource/Base/CommonFunctionality.resource
Library     DataDriver      file=../test_data/orange_data.xlsx      sheet_name=membership

*** Test Cases ***
TC1
#Admin       admin123        CIMA        Company     587.00      Indian Rupee


*** Keywords ***
Mempership Template
    [Arguments]     ${username}     ${password}     ${mm}       ${msp}       ${msa}     ${mc}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Button    id=btnLogin
    Click Element    id=menu_pim_viewMyDetails
    Click Element    link=Memberships
    Click Element    id=btnAddMembershipDetail
    Select From List By Label    id=membership_membership       ${mm}
    Select From List By Label    id=membership_subscriptionPaidBy        ${msp}
    Input Text    id=membership_subscriptionAmount    ${msa}
    Select From List By Label    id=membership_currency        ${mc}
    Input Text    id=membership_subscriptionCommenceDate    2022-04-26
    Input Text    id=membership_subscriptionRenewalDate    2023-04-26
    Click Element    id=btnSaveMembership
    Table Should Contain    xpath=//table[@class="table hover"]    ${mm}
    Table Should Contain    xpath=//table[@class="table hover"]    ${msp}
    Table Should Contain    xpath=//table[@class="table hover"]    ${msa}