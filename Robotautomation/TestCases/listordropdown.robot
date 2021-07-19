*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resourses1.robot
*** Variables ***
${Browser}  Chrome
${URL}  https://www.saucedemo.com/

*** Test Cases ***
Dropdown test
    start browser and Maximize  ${URL}  ${Browser}
    #Open Browser  ${URL}  ${Browser}
    #Maximize Browser Window
    Input Text  xpath://*[@id="user-name"]  standard_user
    Input Text  xpath://*[@id="password"]  secret_sauce
    Click Element  xpath://*[@id="login-button"]
    Set Selenium Speed  2sec
    Select From List By Index  xpath://*[@id="header_container"]/div[2]/div[2]/span/select  2
    Select From List By Value  xpath://*[@id="header_container"]/div[2]/div[2]/span/select  za
    Select From List By Label  xpath://*[@id="header_container"]/div[2]/div[2]/span/select  Price (high to low)
    Close Browser
