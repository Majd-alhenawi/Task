*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/LoginKeywords.robot
Resource  ../../Resources/LangugeKeywords.robot

*** Variables ***
${username}     superuser
${password}     superuser

*** Test Cases ***
Login Test Negativ
        start test case
        Enter Username      wrongUsername
        Enter Password      ${password}
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

        Finisch Test