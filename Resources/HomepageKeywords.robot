*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../PageObject/Locaters.py


*** Keywords ***
Select English Languge
    click element       ${englishLanguage}
    ${active_language}   Get Text    ${language}
    Should Be Equal As Strings    ${active_language}    ENGLISH
    log to console  the selected languge is English

Select German Languge
    click element       ${germanLanguage}
    ${active_language}   Get Text    ${language}
    Should Be Equal As Strings    ${active_language}    GERMAN
    location should be  https://demoauthor.magnolia-cms.com/travel/de/
    log to console  the selected languge is German

Verfication Tours Menu
    Wait Until Page Contains Element    ${tours}
    click element       ${tours}
    ${expected_children}=    Set Variable    ACTIVE\nBEACH\nCULTURAL\nECOTOURISM, NATURE & WILDLIFE\nFAMILY\nOFF THE BEATEN PATH
    ${actual_items}=    get text  ${toursChildren}
    should be equal as strings     ${expected_children}      ${actual_items}

Verfication first Elemnt from Tours Menu
    click element      ${toursFirstElement}
    location should be      https://demoauthor.magnolia-cms.com/travel/tour-type~active~.html
    wait until page contains element    ${toursFirstElementTitle}
    ${text}=     get Text       ${toursFirstElementTitle}
    should be equal as strings   ACTIVE  ${text}
    #page should contain     Lazing about isn’t your idea of a holiday. Whether it’s hiking, biking or parasailing, we have the perfect holiday for you. You can concentrate on the kayaking while we sort out all the boring stuff.

    ${count}    get element count     xpath:/html/body/div[5]/div/a
    log to console   ${count}
    should be equal as integers     ${count}    3

Verfication Destinations Menu
     click element       ${destinations}
     ${expected_children}=    Set Variable    NORTH AMERICA\nCENTRAL & SOUTH AMERICA\nEUROPE\nAFRICA & THE MIDDLE EAST\nASIA & THE PACIFIC\nPOLAR
     ${actual_items}=    Get Text       ${destinationsChildren}
     should be equal as strings     ${expected_children}      ${actual_items}

Verfication first Elemnt from Destinations Menu
    click element      ${destinationsFirstElement}
    location should be      https://demoauthor.magnolia-cms.com/travel/destination~northAmerica~.html
    wait until page contains element    ${destinationsFirstElementTitle}
    ${text}=     get Text       ${destinationsFirstElementTitle}
    should be equal as strings   NORTH AMERICA  ${text}

Verfication Stories Page
    click element           ${stories}
    location should be      https://demoauthor.magnolia-cms.com/travel/stories.html
    wait until page contains element    ${storiesTitle}
    page should contain image      ${firstImage}
    ${firstImageTittle}        get text    ${titleFirstImage}
    ${firstImageDescription}   get text  ${descriptionFirstImage}
    ${firstStory}              get text   ${storyButton}
    should be equal as strings      LOSING AND FINDING MYSELF IN THE SWISS ALPS    ${firstImageTittle}
    should be equal as strings      Dear M, Here’s a confession. Did I ever tell you that I’ve been afraid all my life? Afraid of the cha...  ${firstImageDescription}
    should be equal as strings      Read Story      ${firstStory}

Verfication About Page
    click element           ${about}
    location should be      https://demoauthor.magnolia-cms.com/travel/about.html
    page should contain     About Magnolia Travels
    page should contain     We are a full service, independent travel agency.
    page should contain     We offer unique tours from every continent on the planet. Get inspired and book your tour with us for an experience you’ll always remember.
    scroll element into view        ${ourCompany}
    click link      ${ourCompany}
    location should be   https://demoauthor.magnolia-cms.com/travel/about/company.html
    go back

    scroll element into view        ${whatWeBelieve}
    click link      ${whatWeBelieve}
    location should be      https://demoauthor.magnolia-cms.com/travel/about/what-we-believe.html
    go back

    scroll element into view        ${careers}
    click link      ${careers}
    location should be      https://demoauthor.magnolia-cms.com/travel/about/careers.html
    go back