*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL}  https://www.saucedemo.com/

*** Test Cases ***
Login button test
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  xpath://*[@id="user-name"]  standard_user
    Input Text  xpath://*[@id="password"]  secret_sauce
    Click Button  xpath://*[@id="login-button"]
    Close Browser