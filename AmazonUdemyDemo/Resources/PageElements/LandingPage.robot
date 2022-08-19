*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Navigate to Page
    go to    ${Landing page}
    page should contain element    ${Search box}