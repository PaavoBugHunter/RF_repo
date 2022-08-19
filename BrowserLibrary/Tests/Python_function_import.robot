*** Settings ***
Library     ../Resources/Python_function.py
Library    Browser

#robot -d results tests/Python_function_import.robot

*** Variables ***

*** Keywords ***
Call function from Python
    ${my_value} =   python_function.add one to integer    ${2}
    should be equal    ${my_value}      ${3}

*** Test Cases ***
Add the numbers
    Call function from Python
