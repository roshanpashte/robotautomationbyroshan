*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL}

*** Test Cases ***
Login test
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Select Link  xpath:
    #to select checkbox we need xpath
    #Close Browser