*** Settings ***
Documentation       this file handles browser,resorses to cteate keywords
Library     SeleniumLibrary
*** Variables ***
${BROWSER}      chrome
${URL}      https://opensource-demo.orangehrmlive.com/

*** Keywords ***
launch Browser
    Open Browser        browser=${BROWSER}  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=${URL}
    Maximize Browser Window