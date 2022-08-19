*** Settings ***
Library    ../Resources/Python_class.py     ${1}    ${2}
Library    Browser

#robot -d results tests/Python_class_import.robot

*** Test Cases ***
Count the sum
    ${sum_value}    sum_of_values
    SHOULD BE EQUAL    ${sum_value}     ${3}

#Invalid as the sub_of_value -function is wrapped in the keyword-decorator
#Count the subtraction
#    ${subtraction_value}    sub of value
#    SHOULD BE EQUAL    ${subtraction_value}     ${-1}

Sub by keyword
    ${sub_keyword}      My class keyword
    should be equal     ${sub_keyword}      ${-1}
