*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/DestinationsMenuKeywords.robot

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

Check Destination
        Verfication Destinations Menu

Check first Element in Destination Meun
        Verfication first Elemnt from Destinations Menu

        Finisch Test