*** Settings ***
Documentation  This is a project demo to integrate RF, Git, and Jenkins
Library  SeleniumLibrary

*** Variables ***
${BROWSER}=  ie

*** Test Cases ***
Search in Amazon
    [Documentation]    Present some information about this test case
    [Tags]    Smoke
    Open Browser  https://www.amazon.com  ${Browser}
    Sleep  3s
    Input Text    //input[@id='twotabsearchtextbox']  PS5
    Click Button    //input[@id='nav-search-submit-button']
    Wait Until Page Contains    results for "PS5"
    Close Browser