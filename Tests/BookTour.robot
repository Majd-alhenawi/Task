*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot
Resource  ../Resources/LangugeKeywords.robot
Resource    ../Resources/ToursMenuKeywords.robot


*** Variables ***
${username}     superuser
${password}     superuser

*** Test Cases ***
Login Test Positiv
        start test case
        Enter Username      ${username}
        Enter Password      ${password}
        click signin
        verifiy succesful login
Active PAge
        GO to Active Page
Select Tour
        Select HUT Tour
Book the Tour
        Book HUT Tour
        Give meal information
        Give Personal information

        Finisch Test