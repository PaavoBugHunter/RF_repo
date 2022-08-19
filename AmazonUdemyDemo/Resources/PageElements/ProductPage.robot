*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Product Is Selected
    page should contain link    ${ReturnToResults}

Click Add To Cart-button
    click button    ${AddToCart button}