*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Global variable
@{LIST}     First   Second  Third   Fourth

*** Test Cases ***
Write words
    log    ${LIST}[0]
    log    ${LIST}[1]
    log    ${LIST}[2]
    log    ${LIST}[3]

Second word
    #Test-case -level variable
    ${TC-Variable} =    set variable    Var1
    write to log
    log   ${TC-Variable}

*** Keywords ***
Write to log
    #Key-word -level variable
    ${TC-Variable} =    set variable    Var2
    log    ${TC-Variable}