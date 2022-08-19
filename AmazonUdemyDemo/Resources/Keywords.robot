*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageElements/LandingPage.robot
Resource    ../Resources/PageElements/TaskBar.robot
Resource    ../Resources/PageElements/ResultsCard.robot
Resource    ../Resources/PageElements/ProductPage.robot
Resource    ../Resources/PageElements/Cart.robot
Resource    ../Resources/PageElements/SignInPage.robot

*** Keywords ***
Search for Product
    LandingPage.Navigate to Page
    TaskBar.Initiate Search
    ResultsCard.Verify Search-result

Select Product from Results
    ResultsCard.Select Product
    ProductPage.Verify Product Is Selected

Add to cart
    ProductPage.Click Add To Cart-button
    Cart.Verify Product Is Added

Proceed to check-out
    Cart.Proceed to Check-out
    SignInPage.Verify Sign-in page is reached