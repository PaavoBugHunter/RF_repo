*** Settings ***
Library     ../Resources/Python_keyword.py
Library    Browser

#robot -d results tests/Python_keyword_import.robot

*** Variables ***

*** Keywords ***

*** Test Cases ***
Call function from Python
    ${my_value} =   My First Keyword    ${2}
    should be equal    ${my_value}      ${3}