*** Settings ***
Library                    SeleniumLibrary
Variables                  ../Resources/DemoStore_locatorshomepage.yaml
Variables                  ../Resources/DemoStore_locatorsregister.yaml


*** Variables ***
${DEMOSAUCE_URL}            http://automationpractice.com/index.php
${DEMOSAUCE_BROWSER}        gc

*** Keywords ***
Open Browser With Google Chrome
    Open Browser            url=${DEMOSAUCE_URL}        browser=${DEMOSAUCE_BROWSER}

    
Banner Discount Is Appears
    Element Should Be Visible            ${TopBanner}
# Login Button Is Appears
#     Element Should Be Visible            ${LoginButton}
Contact Us Button Is Appears
    Element Should Be Visible            ${ContactUs}
Sign In Menu Is Appears
    Element Should Be Visible            ${SignInMenu}
Input Search Is Appears
    Element Should Be Visible            ${Search}
Cart Is Appears
    Element Should Be Visible            ${Cart}
Product Item Is Appears
    Element Should Be Visible            ${ProductItem}
Footer Is Appears
    Element Should Be Visible            ${Footer}


Close Google Chrome Browser
    Close Browser

