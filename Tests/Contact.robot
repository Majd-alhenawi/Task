*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/ContactKeywords.robot

*** Variables ***
${username}     superuser
${password}     superuser

*** Test Cases ***
LoginTest
        Start Test Case
        Enter Username      ${username}
        Enter Password      ${password}
        click signin
        verifiy succesul login

Check Contact Page
        verfication contact page

        Finisch Test