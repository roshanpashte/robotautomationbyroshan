*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${url}  https://www.saucedemo.com/

*** Test Cases ***
login test
    open browser  ${url}  ${Browser}
    Maximize Browser Window
    Input Text  id:user-name  standard_user
    Set Selenium Speed  2 seconds
    Input Text  name:password  secret_sauce
    Click Element  id:login-button
    title should be  Swag Labs
    Close browser