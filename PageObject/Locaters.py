# Accept cookie
accept = "xpath:/html/body/div[1]/div/a"

# Login Page locators
loginUsername = '//*[@id="username"]'
loginPass = '//*[@id="password"]'
loginButton = '//*[@id="box"]/form/button'

# Homepage locators user
signedInUser = '//*[@id="user-links"]/a[2]'
logOutButton = '//*[@id="user-links"]/a[1]'

# Homepage locators language
language = "xpath=//div[@id='language-link']//li[@class='active']//span"
englishLanguage = '//*[@id="language-link"]/ul/li[1]'
germanLanguage = '//*[@id="language-link"]/ul/li[2]'

# Homepage locators for Tours and his children
tours = '//*[@id="navbar"]/div/ul/li[1]'
toursChildren = '//*[@id="navbar"]/div/ul/li[1]/ul'
toursFirstElement = '//*[@id="navbar"]/div/ul/li[1]/ul/li[1]'
toursFirstElementTitle = "//h1[contains(text(),'Active')]"

# Homepage locators for Destinations and his children
destinations = '//*[@id="navbar"]/div/ul/li[2]'
destinationsChildren = '//*[@id="navbar"]/div/ul/li[2]/ul'
destinationsFirstElement = '//*[@id="navbar"]/div/ul/li[2]/ul/li[1]'
destinationsFirstElementTitle = "//h1[contains(text(),'North America')]"

# Homepage locators for Stories
stories = '//*[@id="navbar"]/div/ul/li[3]'
storiesTitle = "//h1[normalize-space()='Stories']"
firstImage = "xpath:/html/body/div[3]/div[2]/div[1]/div/a/div[3]/span/img"
titleFirstImage = "xpath:/html/body/div[3]/div[2]/div[1]/div/a/div[2]/h2"
descriptionFirstImage = "xpath:/html/body/div[3]/div[2]/div[1]/div/a/div[3]/div/div[1]"
storyButton = "xpath:/html/body/div[3]/div[2]/div[1]/div/a/div[3]/div/div[2]/span"

# Homepage locators for About
about = '//*[@id="navbar"]/div/ul/li[4]'
aboutTitle = 'xpath:/html/body/div[3]/div[1]/h2'
ourCompany = '//*[@id="teaser-a674e6ae-015c-4526-8b4b-96580eb7cc4f"]/h2/a'
whatWeBelieve = '//*[@id="teaser-afd8b752-1ab9-4665-b794-86d0845b70b9"]/h2/a'
careers = '//*[@id="teaser-9b453dbe-1c04-4406-ad66-667d279c83ed"]/h2/a'
video = "//*[contains(@class, 'video-wrapper')]/video"

# Homepage locators for Contact
contact = '//*[@id="navbar"]/div/ul/li[5]'
email = "//*[@id='email']"
subject = "//*[@id='subject']"
message = "//*[@id='message']"
sendMessage = "//*[contains(@class, 'button-wrapper')]/input"

# Homepage locators for Members
members = '//*[@id="navbar"]/div/ul/li[6]'
membersTitle = "//h2[text()='Members']"
accessMember = "//a[text()='Access Member Content']"
register = "//a[text()='Register']"

# Homepage locators for Search
search = "//*[@id='nav-search']"
searchResult = "xpath://html/body/div[3]/div/a"
firstResult = "xpath://html/body/div[3]/div/a"