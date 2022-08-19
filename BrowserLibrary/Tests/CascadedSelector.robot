*** Settings ***
Library    Browser
#robot -d results tests/CascadedSelector.robot

*** Variables ***

*** Keywords ***


*** Test Cases ***
 Search SF90
    New page    https://www.amazon.com
    #Try if hovering helps
    type text    id=twotabsearchtextbox     SF90
    CLICK    id=nav-search-submit-button
    ${variable} =   get text    xpath=//*[@id="search"]/span/div/span/h1/div/div[1]/div/div/span[1]
    log    ${variable}