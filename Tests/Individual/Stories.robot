*** Settings ***
Library  SeleniumLibrary
Resource    ../../Resources/LoginKeywords.robot
Resource    ../../Resources/StoriesKeywords.robot

*** Variables ***
${username}     superuser
${password}     superuser

*** Test Cases ***
LoginTest
        Start Test Case
        Enter Username      ${username}
        Enter Password      ${password}
        click signin
        verifiy succesful login

Check Stories Page
        Verfication Stories Page
        Finisch Test