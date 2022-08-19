*** Settings ***
Library    Browser
#robot -d results tests/ChainedSelectors.robot

*** Variables ***

*** Keywords ***


*** Test Cases ***
My Testcase
    new page    https://www.amazon.com/
    ${String} =     get text       id=VygxUYZd4DN87OLxsDepVg  #css=.a-cardui-footer > a
    log    ${String}