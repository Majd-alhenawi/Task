*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/HomepageKeywords.robot

*** Variables ***
${URL}     https://demoauthor.magnolia-cms.com/travel/
${browser}     chrome
${username}     superuser
${password}     superuser

*** Test Cases ***
LoginTest
        open chrome browser     ${URL}      ${browser}
        Enter Username      ${username}
        Enter Password      ${password}
        click signin
        verifiy succesul login


Check Languge
        Select English Languge

Check Tours
        Verfication Tours Menu
        Verfication first Elemnt from Tours Menu

Check Destination
        Verfication Destinations Menu
        Verfication first Elemnt from Destinations Menu

Check stories
        Verfication Stories Page

Check about
    Verfication About Page