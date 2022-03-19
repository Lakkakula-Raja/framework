*** Settings ***
Documentation       this file handles all operations in login page
Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${USERNAME_LOCATER}     id=txtUsername

*** Keywords ***
Enter Username
    [Arguments]     ${username}
    Input Text    ${USERNAME_LOCATER}    ${username}