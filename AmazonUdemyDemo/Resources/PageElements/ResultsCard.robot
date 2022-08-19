*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search-result
    page should contain    ${Search-result text}

Select Product
    click link    ${Product link}