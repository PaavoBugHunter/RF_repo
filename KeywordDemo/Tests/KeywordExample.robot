*** Settings ***
Documentation    This suite illustrates how user-defined key words can be used to make tests more concise
Library    SeleniumLibrary
#robot -d results Tests/KeywordExample.robot


*** Test Cases ***
First Test-case
    Do Something

    Do Something Else

Second Test-case
    Do Another Thing

    Do Something Else

*** Keywords ***
Do Something
    log    Here's something you do

Do Something Else
    log    Here's something else that you do

Do Another Thing
    log    Here's another thing that you do