*** Settings ***
Library    SeleniumLibrary
#robot -d results tests/imagetest.robot

*** Variables ***


*** Test Cases ***
Test To Click Image
    [Documentation]    This tests how can we click image
    [Tags]    Secondary
    open browser    https://www.amazon.com/     Chrome
    #wait until element is visible   css=#30 2e1c514-15db-4716-929f-1f85e3c1c9fa > div.a-section.as-title-block > h2
    click link    /gp/css/order-history?ref_=nav_orders_first
    close browser

*** Keywords ***


