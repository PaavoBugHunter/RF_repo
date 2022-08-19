*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Sign-in page is reached
    page should contain element    ${E-mail field}