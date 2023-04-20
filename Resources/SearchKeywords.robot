*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../Locaters/Locaters.py


*** Keywords ***
Verfication search
    page should contain element         ${search}
    input text                          ${search}     Europe
    press keys                          ${search}     RETURN
    wait until page contains element    ${searchResult}     timeout=5
    wait until page contains             pages found for "Europe"       timeout=5
    ${count}                            get element count   ${searchResult}
    ${result}=                          Evaluate    ${count} > 3
    Should Be True                      ${result}    The element value is not greater than 3
    ${link}                             get element attribute    ${firstResult}      href
    log to console                      ${link}
    click element                       ${firstResult}
    location should be                  ${link}     timeout=5