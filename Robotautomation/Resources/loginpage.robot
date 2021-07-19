*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/loginelements.py

*** Keywords ***
open my browser
    [Arguments]  ${url}  ${browser}
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
Enter username
    [Arguments]   ${username}
    Input Text  ${txt_loginUserName}  A${username}
Enter password
    [Arguments]  ${passward}
    Input Text   ${txt_loginUserPassword}  ${passward}
Click button
    Click Element  ${click_button}
verify login
    title should be  Swag Labs
close browser
    close browser

