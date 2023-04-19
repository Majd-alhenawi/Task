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
        start test case
        Enter Username      ${username}
        Enter Password      ${password}
        Wait untail Page Load
        click signin
        Wait untail Page Load
        verifiy succesul login
Check Languge
        Select English Languge

Check Tours
        Verfication Tours Menu
        Wait untail Page Load
        Verfication first Elemnt from Tours Menu
        Wait untail Page Load

Check Destination
        Verfication Destinations Menu
        Verfication first Elemnt from Destinations Menu
        Wait untail Page Load

Check stories
        Verfication Stories Page


Check about
        Verfication About Page

Check contact
        Verfication Contact Page

Check members
        Verfication Members Page

Check Search
        Verfication search