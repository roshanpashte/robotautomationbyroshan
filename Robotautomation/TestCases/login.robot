*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/loginpage.robot
Documentation  this is login test
#Suite Setup- will run before every test suit
#Suite Teardown-will run after every test suit
#Test Setup -will run before every test cases
#Test Teardown- will run after evry testcase

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  Firefox
${username}  problem_user
${passward}  secret_sauce

*** Test Cases ***
login test
    open my browser  ${url}  ${browser}
    Enter username  ${username}
    Enter password  ${passward}
    Click button
    sleep 1 seconds
    verify login
    close browser
#[Arguments]
#[Documentation]
#[Tags]
#[Timeout]

#to run in jenkins path and run.bat