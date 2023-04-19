*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../PageObject/Locaters.py


*** Variables ***
${URL}     https://demoauthor.magnolia-cms.com/travel/

*** Keywords ***
Verfication Contact Page
    click element     ${contact}
    location should be    https://demoauthor.magnolia-cms.com/travel/contact.html
    page should contain     Contact
    get element attribute    ${email}       required
    get element attribute    ${message}     required
    input text    ${email}      test@test.com
    input text    ${subject}    test
    input text    ${message}    try to send message with robot framework
    click button    ${sendMessage}
    page should contain     Your message could not be sent
    sleep    1