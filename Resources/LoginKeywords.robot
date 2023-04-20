*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../Locaters/Locaters.py

*** Variables ***
${URL}     https://demoauthor.magnolia-cms.com/travel/
${browser}     chrome

*** Keywords ***
Start Test Case
    open browser      ${Url}      ${Browser}
    maximize browser window
    wait until element is visible       ${loginUsername}        timeout=3

Enter Username
    [Arguments]      ${username}
    input text       ${loginUsername}       ${username}

Enter Password
    [Arguments]      ${password}
    input text       ${loginPass}       ${password}

Click SignIn
    click button     ${loginButton}

Verifiy Succesul Login
    wait until page contains element     ${signedInUser}     timeout=3
    click element     ${accept}
    log to console    user is eingeloggt

Finisch Test
    close browser