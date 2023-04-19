*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/AboutKeywords.robot

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

Check About Page
        verfication about page
        Finisch Test