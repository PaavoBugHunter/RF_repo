*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Initiate Search
    input text    ${Search box}    ${Product}    True
    click button    ${Magnifying glass}