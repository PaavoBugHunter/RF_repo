*** Settings ***
Library    Browser
#robot -d results tests/BingSearchField.robot

*** Variables ***

*** Keywords ***


*** Test Cases ***
 Search SF90
    New page    https://www.bing.com
    #Try if hovering helps
    type text    id=sb_form_q     SF90