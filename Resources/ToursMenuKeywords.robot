*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../Locaters/Locaters.py


*** Variables ***
${URL}     https://demoauthor.magnolia-cms.com/travel/

*** Keywords ***
Verfication Tours Menu
    Wait Until Page Contains Element    ${tours}
    click element                       ${tours}
    ${expected_children}=               Set Variable    ACTIVE\nBEACH\nCULTURAL\nECOTOURISM, NATURE & WILDLIFE\nFAMILY\nOFF THE BEATEN PATH
    ${actual_items}=                    get text  ${toursChildren}
    should be equal as strings          ${expected_children}      ${actual_items}

Verfication first Elemnt from Tours Menu
    click element                       ${toursFirstElement}
    #${ur}   get location
    location should contain             ${URL}     tour-type~active~.html
    wait until page contains element    ${toursFirstElementTitle}
    ${text}=     get Text               ${toursFirstElementTitle}
    should be equal as strings          ACTIVE  ${text}
    #page should contain     Lazing about isn’t your idea of a holiday. Whether it’s hiking, biking or parasailing, we have the perfect holiday for you. You can concentrate on the kayaking while we sort out all the boring stuff.
