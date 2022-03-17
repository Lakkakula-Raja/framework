*** Settings ***
Documentation       this file handles browser,resorses to cteate keywords
Library     SeleniumLibrary
*** Keywords ***
launch Browser
    Open Browser        browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://opensource-demo.orangehrmlive.com/
    Maximize Browser Window