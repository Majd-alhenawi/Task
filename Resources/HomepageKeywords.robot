*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../PageObject/Locaters.py

*** Variables ***
${URL}     https://demoauthor.magnolia-cms.com/travel/

*** Keywords ***
Wait untail Page Load
    Wait For Condition	    return document.readyState == "complete"    timeout=10s
    ${test}         wait for condition       return document.readyState == "complete"
    log to console    ${test}
Select English Languge
    click element       ${englishLanguage}
    ${active_language}   Get Text    ${language}
    Should Be Equal As Strings    ${active_language}    ENGLISH
    log to console  the selected languge is English

Select German Languge
    click element       ${germanLanguage}
    ${active_language}   Get Text    ${language}
    Should Be Equal As Strings    ${active_language}    GERMAN
    location should be      https://demoauthor.magnolia-cms.com/travel/de/          #googlen
    log to console  the selected languge is German

Verfication Tours Menu
    Wait Until Page Contains Element    ${tours}
    click element       ${tours}
    ${expected_children}=    Set Variable    ACTIVE\nBEACH\nCULTURAL\nECOTOURISM, NATURE & WILDLIFE\nFAMILY\nOFF THE BEATEN PATH
    ${actual_items}=    get text  ${toursChildren}
    should be equal as strings     ${expected_children}      ${actual_items}

Verfication first Elemnt from Tours Menu
    click element      ${toursFirstElement}
    ${ur}   get location
    location should contain        ${ur}     tour-type~active~.html
    wait until page contains element    ${toursFirstElementTitle}
    ${text}=     get Text       ${toursFirstElementTitle}
    should be equal as strings   ACTIVE  ${text}
    #page should contain     Lazing about isn’t your idea of a holiday. Whether it’s hiking, biking or parasailing, we have the perfect holiday for you. You can concentrate on the kayaking while we sort out all the boring stuff.


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

    click element    ${video}
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

Verfication search
    page should contain element    ${search}
    input text    ${search}     Europe
    press keys    ${search}     RETURN
    page should contain    3 pages found for "Europe"
    ${count}    get element count     ${searchResult}
    ${result}=    Evaluate    ${count} > 3
    Should Be True    ${result}    The element value is not greater than 3
    ${link}    get element attribute    ${firstResult}      href
    log to console    ${link}
    click element    ${firstResult}
    location should be      ${link}

