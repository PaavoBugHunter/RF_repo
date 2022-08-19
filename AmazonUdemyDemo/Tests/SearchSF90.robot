*** Settings ***
Resource    ../Resources/Keywords.robot
Resource    ../Resources/Common.robot
Suite Setup    Prerequisites
Suite Teardown    Clean up
Test Setup    Open test-browser
Test Teardown    Close test-browser

#robot -d results tests/searchSF90.robot

#To run the smoke.test (smoke-tag),
#robot -d results -i smoke tests/searchSF90.robot

*** Variables ***
#Global variables
${Landing page} =   https://www.amazon.com/
${Search box} =   id:twotabsearchtextbox
${Product} =   Ferrari sf90
${Magnifying glass} =   id:nav-search-submit-button
${Search-result text} =    results for "Ferrari sf90"
${Product link} =   xpath://*[@id="search"]/div[1]/div/div[1]/div/span[3]/div[2]/div[1]/div/span/div/div/div[2]/h2/a
${ReturnToResults} =    id:breadcrumb-back-link
${AddToCart button} =   id:add-to-cart-button
${ToCheck-out button} =     css:#hlb-ptc-btn-native
${E-mail field} =   id:ap_email

*** Test Cases ***
Search SF90
    [Tags]    search
    Keywords.Search for Product

Add product to cart
    [Tags]    addition to cart
    keywords.search for product
    keywords.select product from results
    keywords.add to cart

Verify e-mail at check-out
    [Tags]    smoke
    keywords.search for product
    keywords.select product from results
    keywords.add to cart
    keywords.proceed to check-out


