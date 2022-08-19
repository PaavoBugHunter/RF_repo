*** Settings ***
Library    Browser

*** Test Cases ***
Capture Title
    new page    https://playwright.dev
    get text    css = #__docusaurus > div.main-wrapper > header > div > h1 > span
