*** Settings ***
Library                    SeleniumLibrary
Variables                  ../Resources/DemoStore_locatorslogin.yaml
Variables                  ../Resources/DemoStore_locatorsregister.yaml

*** Variables ***
# ${DEMOSAUCE_URL}            http://automationpractice.com/index.php
# ${DEMOSAUCE_BROWSER}        gc

*** Keywords ***
# Open Browser With Google Chrome
#     Open Browser            url=${DEMOSAUCE_URL}        browser=${DEMOSAUCE_BROWSER}

Input Username Field
    Input Text                    ${Email}        text=arkawicak@gmail.com

Input Password Field
    Input Text                    ${Password}        text=12345

Click Login Button
    Click Element                ${Login}

Input Invalid Email 
    Input Text                   ${Email}        text=arkawicak

Verify Error Message Login
    Wait Until Element Is Visible     ${ErrorMessage} 
    Element Should Be Visible          ${ErrorMessage}	   

Input Invalid Password
    Input Text                    ${Password}        text=secret122
# Close Google Chrome Browser
#     Close Browser

