*** Settings ***
Documentation    This is suite for reviewing RF-suite creation
Library    SeleniumLibrary
#robot -d results tests/amazon.robot

*** Variables ***


*** Test Cases ***
Entry to Amazon's landing-page
    [Documentation]    This is a sample test-case.
    [Tags]    Smoke
    open browser    https://www.amazon.com/    Chrome
    wait until element is visible    id:nav-logo-sprites    3s
    close browser

*** Keywords ***
