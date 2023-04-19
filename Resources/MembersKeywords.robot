*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../PageObject/Locaters.py


*** Variables ***
${URL}     https://demoauthor.magnolia-cms.com/travel/

*** Keywords ***
Verfication Members Page
    click element    ${members}
    location should be    https://demoauthor.magnolia-cms.com/travel/members.html
    ${title}    get text    ${membersTitle}
    should be equal as strings    ${title}       MEMBERS
    page should contain element    ${accessMember}
    page should contain element    ${register}
    click link    ${accessMember}
    location should be    https://demoauthor.magnolia-cms.com/travel/members/protected.html
    go back
    click link    ${register}
    location should be    https://demoauthor.magnolia-cms.com/travel/members/registration.html
    go back