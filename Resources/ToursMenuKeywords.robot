*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../Locaters/Locaters.py


*** Variables ***
${URL}     https://demoauthor.magnolia-cms.com/travel/

*** Keywords ***
Verfication Tours Menu
    Wait Until Page Contains Element    ${tours}    timeout=5
    click element                       ${tours}
    ${expected_children}=               Set Variable    ACTIVE\nBEACH\nCULTURAL\nECOTOURISM, NATURE & WILDLIFE\nFAMILY\nOFF THE BEATEN PATH
    ${actual_items}=                    get text  ${toursChildren}
    should be equal as strings          ${expected_children}      ${actual_items}

Verfication first Elemnt from Tours Menu
    click element                       ${toursFirstElement}
    location should contain             ${URL}     tour-type~active~.html
    wait until page contains element    ${toursFirstElementTitle}
    ${text}=     get Text               ${toursFirstElementTitle}
    should be equal as strings          ACTIVE  ${text}
    #page should contain     Lazing about isn’t your idea of a holiday. Whether it’s hiking, biking or parasailing, we have the perfect holiday for you. You can concentrate on the kayaking while we sort out all the boring stuff.

GO to Active Page
    wait until page contains element    ${tours}        timeout=5
    click element                       ${tours}
    click element                       ${toursFirstElement}
Select HUT Tour
    wait until page contains element    ${hutToHut}     timeout=5
    scroll element into view            ${hutToHut}
    click element                       ${hutToHut}
    location should contain             ${URL}      tours/magnolia-travels/Hut-to-Hut-in-the-Swiss-Alps.html
    page should contain                 start city
    page should contain                 Zurich, Switzerland
    page should contain                 duration
    page should contain                 7 days
    page should contain                 tour operator
    page should contain                 Magnolia Travels
Book HUT Tour
    click element                       ${bookTourButton}
    location should contain             ${URL}    book-tour.html?location=Zurich%2C+Switzerland
    page should contain                 Book your tour
    input text                          ${adultsNumber}     1
    textfield value should be           ${adultsNumber}     1           #Check if rquierd field has value
    input text                          ${youthNumber}      1
    click element                       ${supportcheckbox}
    select from list by value           ${mealRequirements}     yes
    click element                       ${nextButton}
Give meal information
    location should contain             ${URL}    book-tour/meal.html?mgnlFormToken=76df0fed-b9ba-43e9-94bb-3e4ca3c4307b
    page should contain                 Meal
    click element                       ${veganCheckbox}
    click element                       ${nextStep}
Give Personal information
    location should contain             ${URL}      book-tour/personal-details.html?mgnlFormToken=76df0fed-b9ba-43e9-94bb-3e4ca3c4307b
    page should contain                 Personal information
    input text                          ${title}    Herr
    input text                          ${firstName}    TestFirstName
    textfield value should be           ${firstName}    TestFirstName
    input text                          ${lastName}     TestLastName
    textfield value should be           ${lastName}     TestLastName
    input text                          ${email}        test@test.com
    textfield value should be           ${email}        test@test.com
    input text                          ${phone}        0123456789
    click element                       ${nextStep}
    wait until page contains            HTTP Status 500 – Internal Server Error         timeout=6
