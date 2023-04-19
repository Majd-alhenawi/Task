*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/HomepageKeywords.robot

Test Setup    Start Test Case
Test Teardown    Finisch Test

*** Variables ***
${username}     superuser
${password}     superuser

*** Test Cases ***
LoginTest

        Enter Username      ${username}
        Enter Password      ${password}
        click signin
        verifiy succesul login
        Finisch Test