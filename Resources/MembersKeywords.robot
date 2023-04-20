*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../Locaters/Locaters.py


*** Variables ***
${URL}     https://demoauthor.magnolia-cms.com/travel/

*** Keywords ***
Verfication Members Page
    click element                 ${members}
    location should contain       ${URL}    members.html
    ${title}                      get text    ${membersTitle}
    should be equal as strings    ${title}       MEMBERS
    page should contain element   ${accessMember}
    page should contain element   ${register}
    click link                    ${accessMember}
    location should contain       ${URL}    members/protected.html
    go back
    click link                    ${register}
    location should contain       ${URL}    members/registration.html
    go back