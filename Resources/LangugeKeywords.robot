*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../Locaters/Locaters.py


*** Variables ***
${URL}     https://demoauthor.magnolia-cms.com/travel/

*** Keywords ***
Select English Languge
    click element                 ${englishLanguage}
    ${active_language}            Get Text    ${language}
    Should Be Equal As Strings    ${active_language}    ENGLISH
    log to console                the selected languge is English

Select German Languge
    click element                  ${germanLanguage}
    ${active_language}             Get Text    ${language}
    Should Be Equal As Strings     ${active_language}    GERMAN
    location should contain             ${URL}   de/
    log to console                 the selected languge is German