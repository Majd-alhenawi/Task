*** Settings ***
Library  SeleniumLibrary
Resource    ../../Resources/LoginKeywords.robot
Resource    ../../Resources/ToursMenuKeywords.robot


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

Check Tours
        Verfication Tours Menu

Check Active Elemnt in Tours Menu
        Verfication first Elemnt from Tours Menu
        Finisch Test
