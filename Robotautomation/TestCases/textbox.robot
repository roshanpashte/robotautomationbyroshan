*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.saucedemo.com/

*** Keywords ***



*** Test Cases ***
Login test
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  xpath://*[@id="user-name"]  standard_user
    Input Text  xpath://*[@id="password"]  secret_sauce
    Click Element  xpath://*[@id="login-button"]
    Close Browser