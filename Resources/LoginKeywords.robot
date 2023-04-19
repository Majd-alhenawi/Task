*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../PageObject/Locaters.py


*** Keywords ***
Open Chrome Browser
    [Arguments]     ${Url}      ${Browser}
    open browser    ${Url}      ${Browser}
    maximize browser window
    wait until element is visible       ${loginUsername}        timeout=3

Enter Username
    [Arguments]     ${username}
    input text       ${loginUsername}       ${username}

Enter Password
    [Arguments]     ${password}
    input text       ${loginPass}       ${password}

Click SignIn
    click button    ${loginButton}

Verifiy Succesul Login
    wait until page contains element     ${signedInUser}     timeout=3
    sleep   2
    click element   ${accept}
    log to console  user is eingeloggt

Close Browser if failed
    close browser