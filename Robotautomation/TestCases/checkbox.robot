*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL}  http://demo.automationtesting.in/Register.html

*** Test Cases ***
Login test
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Select Checkbox  Cricket
    #to select checkbox we need only value
    #Close Browser
    Capture Page Screenshot  C:/Users/Roshan/PycharmProjects/Robotautomation/TestCases/check.png