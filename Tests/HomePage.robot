*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot
Resource  ../Resources/LangugeKeywords.robot
Resource    ../Resources/ToursMenuKeywords.robot
Resource    ../Resources/DestinationsMenuKeywords.robot
Resource    ../Resources/StoriesKeywords.robot
Resource    ../Resources/AboutKeywords.robot
Resource    ../Resources/ContactKeywords.robot
Resource    ../Resources/MembersKeywords.robot
Resource    ../Resources/SearchKeywords.robot


*** Variables ***
${username}     superuser
${password}     superuser

*** Test Cases ***
Login Test Negativ wrong username
        start test case
        Enter Username      wrongUsername
        Enter Password      ${password}
        click signin
        verifiy unsuccesful login

Login Test Negativ wrong password

        Enter Username      ${username}
        Enter Password      wrongpassword
        click signin
        verifiy unsuccesful login

Login Test Positiv
        Enter Username      ${username}
        Enter Password      ${password}
        click signin
        verifiy succesful login

Check German Languge
        Select German Languge

Check English Languge
        Select English Languge

Check Tours
        Verfication Tours Menu

Check Active Elemnt in Tours Menu
        Verfication first Elemnt from Tours Menu

Check Destination
        Verfication Destinations Menu

Check first Element in Destination Meun
        Verfication first Elemnt from Destinations Menu

Check Stories Page
        Verfication Stories Page

Check About Page
        verfication about page

Check Contact Page
        verfication contact page

Check Members Page
        verfication members page

Check Search
        verfication search

        Finisch Test