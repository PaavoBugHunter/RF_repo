*** Settings ***
Library    Browser
#robot -d results tests/searchSF90.robot
Resource    Resources/Variables.py

*** Variables ***
${test_url} =   test_address

*** Keywords ***


*** Test Cases ***
Search SF90 on Amazon
    #new browser    headless     False
    new page    https://www.amazon.com/
    type text    id=twotabsearchtextbox     SF90
    click    id=nav-search-submit-button
    ${textvariable} =    get text    css=.a-spacing-top-small > span   contains    results for
    #:nth-child(1)
    #should be equal
    log     ${textvariable}