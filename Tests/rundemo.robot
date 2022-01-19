*** Settings ***
Documentation  This is a project demo to integrate RF, Git, and Jenkins
Library  SeleniumLibrary

*** Variables ***
${BROWSER}=  ie

*** Test Cases ***
Search in Amazon
    [Documentation]    This test validates the search bar in Amazon
    [Tags]    Smoke Search
    Open Browser  https://www.amazon.com  ${Browser}
    Sleep  3s
    Input Text    //input[@id='twotabsearchtextbox']  PS5
    Click Button    //input[@id='nav-search-submit-button']
    Wait Until Page Contains    results for "PS5"
    Sleep  3s
    Close Browser