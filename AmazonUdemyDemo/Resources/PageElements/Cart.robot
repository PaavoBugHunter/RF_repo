*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Product Is Added
    page should contain    Cart subtotal (

Proceed to Check-out
    click link    ${ToCheck-out button}
    #xpath://*[@id="hlb-ptc-btn-native"] works as well