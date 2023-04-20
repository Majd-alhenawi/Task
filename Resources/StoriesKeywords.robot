*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Variables  ../Locaters/Locaters.py


*** Variables ***
${URL}     https://demoauthor.magnolia-cms.com/travel/

*** Keywords ***

Verfication Stories Page
    click element                       ${stories}
    location should contain             ${URL}     stories.html
    wait until page contains element    ${storiesTitle}
    page should contain image           ${firstImage}
    ${firstImageTittle}                 get text    ${titleFirstImage}
    ${firstImageDescription}            get text  ${descriptionFirstImage}
    ${firstStory}                       get text   ${storyButton}
    should be equal as strings          LOSING AND FINDING MYSELF IN THE SWISS ALPS    ${firstImageTittle}
    should be equal as strings          Dear M, Here’s a confession. Did I ever tell you that I’ve been afraid all my life? Afraid of the cha...  ${firstImageDescription}
    should be equal as strings          Read Story      ${firstStory}