*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../Locaters/Locaters.py


*** Variables ***
${URL}     https://demoauthor.magnolia-cms.com/travel/

*** Keywords ***
Verfication Destinations Menu
   click element                       ${destinations}
   ${expected_children}=               Set Variable    NORTH AMERICA\nCENTRAL & SOUTH AMERICA\nEUROPE\nAFRICA & THE MIDDLE EAST\nASIA & THE PACIFIC\nPOLAR
   ${actual_items}=                    Get Text       ${destinationsChildren}
   should be equal as strings          ${expected_children}      ${actual_items}

Verfication first Elemnt from Destinations Menu
   click element                       ${destinationsFirstElement}
   location should contain                  ${URL}   destination~northAmerica~.html
   wait until page contains element    ${destinationsFirstElementTitle}
   ${text}=     get Text               ${destinationsFirstElementTitle}
   should be equal as strings          NORTH AMERICA  ${text}