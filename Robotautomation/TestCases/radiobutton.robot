*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://demo.automationtesting.in/Register.html

*** Test Cases ***
Login test
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Select Radio Button  radiooptions  FeMale
    #to select radio button we need to add value and then add name
    Close Browser