*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../Locaters/Locaters.py

*** Variables ***
${URL}     https://demoauthor.magnolia-cms.com/travel/

*** Keywords ***
Verfication About Page
    click element               ${about}
    location should contain     ${URL}     about.html
    page should contain         About Magnolia Travels
    page should contain         We are a full service, independent travel agency.
    page should contain         We offer unique tours from every continent on the planet. Get inspired and book your tour with us for an experience you’ll always remember.
    scroll element into view    ${ourCompany}
    click link                  ${ourCompany}
    location should contain     ${URL}     about/company.html
    go back

    scroll element into view    ${whatWeBelieve}
    click link                  ${whatWeBelieve}
    location should contain     ${URL}    about/what-we-believe.html
    go back

    scroll element into view    ${careers}
    click link                  ${careers}
    location should contain     ${URL}    about/careers.html
    go back
