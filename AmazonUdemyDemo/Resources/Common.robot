*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${Browser} =    Chrome
@{Browser} =    Chrome  Firefox    Edge    IE

*** Keywords ***
Prerequisites
    log    Enter data to DB
    log    ...and data's enter to DB

Clean up
    log    Clean the DB
    log    ...the DB's cleaned

Open test-browser
    OPEN BROWSER    about:blank     ${Browser}[0]

Close test-browser
    close browser